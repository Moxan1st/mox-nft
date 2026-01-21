// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract YourContract is ERC721Enumerable {
    uint256 public nextTokenId;

    constructor() ERC721("YourCollectible", "YCB") {}

    function mintItem() public returns (uint256) {
        uint256 tokenId = nextTokenId;
        _safeMint(msg.sender, tokenId);
        nextTokenId++;
        return tokenId;
    }
}
