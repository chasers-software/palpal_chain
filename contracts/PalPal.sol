// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract PalPal{
    // Content structure definition
    struct Content {

        // Unique content specification
        uint256 id;
        address creator;

        // IPFS Hashes
        string contentHash;
        string thumbnailHash;
        string detailsHash;

        // Additional fields
        bool isUploaded;
        uint256 likesCount;
        uint256 tipsCount;
        uint256 commentsCount;
    }
}