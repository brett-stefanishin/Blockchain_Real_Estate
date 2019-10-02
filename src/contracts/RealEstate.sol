pragma solidity ^0.5.1;

import "./ERC721Full.sol";

contract RealEstate is ERC721Full {
  string[] public tokens;
  mapping(string => bool) _tokenExists;

  constructor() ERC721Full("Blockchain Real Estate Token", "BRET") public {
  }

  function mint(string memory _name) public {
    require(!_tokenExists[_name]);
    uint _id = tokens.push(_name);
    _mint(msg.sender, _id);
    _tokenExists[_name] = true;
  }
}
