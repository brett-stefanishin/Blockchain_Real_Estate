pragma solidity ^0.5.1;

import "./ERC721Full.sol";

contract RealEstate is ERC721Full {

  string public name;

  constructor () public {
    name = "Blockchain Real Estate";
  }
}
