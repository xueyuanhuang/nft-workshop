// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9 <=0.8.22;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol"; 

contract SimpleNft is ERC721, Ownable{
    using Strings for uint256;
    using Counters for Counters.Counter;
    Counters.Counter private tokenIds;

    uint256 public constant TOTAL_POKEMON = 5;
    uint256 public cost = 0.01 * 1e18; //matic
    string public baseURI;

    constructor(address initialOwner, string memory _initbaseURI) ERC721("Pokemon", "PKM") Ownable(initialOwner)
    {
        baseURI=_initbaseURI;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function mint(address _to) public payable {
        require(tokenIds.current() < TOTAL_POKEMON, "Sorry we are out of Pokemon NFTs");
        require(msg.value == cost,"You have indicated the wrong cost, it costs 0.01 Matic to mint this NFT");
        require(_to == msg.sender,"Only the minter can receive the NFT");
        _safeMint(_to,tokenIds.current());
        tokenIds.increment();
    }

    function tokenURI(uint256 _tokenId) public view virtual override returns (string memory){
        require(_ownerOf(_tokenId) != address(0),"ERC721Metadata: URI query for nonexistent token");
        string memory currentBaseURI = _baseURI();
        return
            bytes(currentBaseURI).length > 0 ? 
            string(abi.encodePacked(
                currentBaseURI,"/",
                _tokenId.toString(),
                ".json")): 
            "";
    }

}
