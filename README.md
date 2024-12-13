# Tokenized Voting System

This is a decentralized voting system built on the Ethereum blockchain using Solidity. It allows users to vote for candidates in a secure, transparent manner, with each user allowed only one vote.

## Features:
- Users can vote for candidates.
- Each user can vote only once.
- Voting results are stored on the blockchain, ensuring transparency.
- At the end of voting, the system calculates and returns the winner.

## Smart Contract: `VotingSystem.sol`
This contract allows the creation of candidates and enables voting. It tracks votes and ensures that no user can vote more than once. At the end of the voting period, the contract determines the winner based on the highest vote count.

## How to Use:
1. Deploy the `VotingSystem.sol` contract.
2. Call the `vote(candidateIndex)` function to cast your vote.
3. Use `getWinner()` to retrieve the candidate with the most votes.