pragma solidity >=0.4.21 <0.7.0;

contract Election {
  // Model a candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  // Store candidates
  // Fetch candidates
  mapping(uint => Candidate) public candidates;
  // Store candidates count
  uint public candidatesCount;

  // Run everytime we init our contract with migrations
  constructor() public {
    addCandidate('Candidate 1');
    addCandidate('Candidate 2');
  }

  function addCandidate (string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  function vote (uint _candidateId) public {
    candidates[_candidateId].voteCount ++;
  }
}