// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./NFT.sol";

contract Marketplace is NFT{
    struct Auction {
        address seller;
        bool active;
        bool isFixedPrice;
        uint256 askingPrice;
        uint256 highestBid;
        address highestBidder;
    }

    mapping(uint256 => Auction) public tokenIdToAuction;

    function listForSaleOrAuction(uint256 _tokenId, uint256 _price, bool isAuction) external {
        require(msg.sender == IERC721(address(this)).ownerOf(_tokenId), "Only Owner can sale");
        require(_price > 0, "Price must be greater than 0");

        if(isAuction == true){
            tokenIdToAuction[_tokenId] = Auction({
                seller: msg.sender,
                active: true,
                isFixedPrice: true,
                askingPrice: _price,
                highestBid: 0,
                highestBidder: address(0)
            });
        }else{
            tokenIdToAuction[_tokenId] = Auction({
                seller: msg.sender,
                active: true,
                isFixedPrice: false,
                askingPrice: _price,
                highestBid: _price,
                highestBidder: address(0)
            });
        }

        IERC721 token = IERC721(address(this));
        token.safeTransferFrom(msg.sender, address(this), _tokenId);
    }

function bid(uint256 _tokenId, uint256 _bidAmount) external {
    Auction storage auction = tokenIdToAuction[_tokenId];
    require(auction.active, "Auction not active");
    require(auction.isFixedPrice == false, "Auction is fixed price");
    require(_bidAmount > auction.highestBid, "Bid must be higher than current highest bid");

    NFT(auction.highestBidder).safeTransferFrom(msg.sender, address(this), _bidAmount);
    auction.highestBid = _bidAmount;
    auction.highestBidder = msg.sender;
}

function endAuction(uint256 _tokenId) external {
    Auction storage auction = tokenIdToAuction[_tokenId];
    require(auction.active, "Auction not active");

    auction.active = false;

    if (auction.highestBid == 0) {
        IERC721 token = IERC721(address(this));
        token.safeTransferFrom(address(this), auction.seller, _tokenId);
    } else {
        NFT token = NFT(address(this));
        token.safeTransferFrom(address(this), auction.highestBidder, _tokenId);

    }
}

function cancelAuction(uint256 _tokenId) external {
    Auction storage auction = tokenIdToAuction[_tokenId];
    require(msg.sender == auction.seller, "Not seller of NFT");
    require(auction.active, "Auction not active");

    auction.active = false;
}

// function onERC721Received(address, address, uint256, bytes memory) public pure returns (bytes4) {
//     return this.onERC721Received.selector;
// }

// function upgrade(address _newContract) external onlyOwner {
//     IERC721 token = IERC721(address(this));
//     token.safeTransferFrom(address(this), _newContract, token.balanceOf(address(this)));
// }
}