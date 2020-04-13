pragma solidity >=0.4.21 <0.7.0;

contract Election {
  // Store candidate

  // Read candidate
  string public candidate;

  // Constructor - something that gets run
  // everytime we init our contract with migrations
  constructor() public {
    candidate = 'Candidate 1';
  }
}