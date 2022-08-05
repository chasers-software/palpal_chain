// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract PalPal {
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

    // Comment structure definition
    struct Comment {
        address commentor;
        string comment;
    }

    // Main identifier used as content's id
    uint256 public contentCount = 0;

    // mappings
    mapping(uint256 => Content) public contents;
    mapping(uint256 => address[]) likes;
    mapping(uint256 => address[]) tips;
    mapping(uint256 => Comment[]) comments;

    // Check for valid uploaded content
    modifier validContent(uint256 _id) {
        require(contents[_id].isUploaded == true, "Content not found");
        _;
    }

    // Upload and store content
    function uploadContent(
        string memory _contentHash,
        string memory _thumbnailHash,
        string memory _detailsHash
    ) public {
        contentCount++;
        contents[contentCount] = Content(
            contentCount,
            msg.sender,
            _contentHash,
            _thumbnailHash,
            _detailsHash,
            true,
            0,
            0,
            0
        );
    }
}
