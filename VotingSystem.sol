// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
        struct Candidate {
                    string name;
                            uint256 voteCount;
        }

            mapping(address => bool) public hasVoted;
                Candidate[] public candidates;

                    address public owner;

                        constructor(string[] memory candidateNames) {
                                    owner = msg.sender;

                                            for (uint256 i = 0; i < candidateNames.length; i++) {
                                                            candidates.push(Candidate({name: candidateNames[i], voteCount: 0}));
                                            }
                        }

                            function vote(uint256 candidateIndex) public {
                                        require(!hasVoted[msg.sender], "You have already voted!");
                                                require(candidateIndex < candidates.length, "Invalid candidate index!");

                                                        hasVoted[msg.sender] = true;
                                                                candidates[candidateIndex].voteCount += 1;
                            }

                                function getWinner() public view returns (string memory winnerName) {
                                            require(candidates.length > 0, "No candidates available!");

                                                    uint256 maxVotes = 0;
                                                            uint256 winnerIndex = 0;

                                                                    for (uint256 i = 0; i < candidates.length; i++) {
                                                                                    if (candidates[i].voteCount > maxVotes) {
                                                                                                        maxVotes = candidates[i].voteCount;
                                                                                                                        winnerIndex = i;
                                                                                    }
                                                                    }

                                                                            winnerName = candidates[winnerIndex].name;
                                }

                                    function getCandidates() public view returns (Candidate[] memory) {
                                                return candidates;
                                    }
}
                                    }
                                                                                    }
                                                                    }
                                }
                            }
                                            }
                        }
        }
}