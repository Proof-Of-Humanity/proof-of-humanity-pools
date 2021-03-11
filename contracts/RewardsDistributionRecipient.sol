/**
 *  @authors: []
 *  @reviewers: [@clesaege, @unknownunknown1]
 *  @auditors: []
 *  @bounties: []
 *  @deployments: []
 *  @tools: []
 */
pragma solidity ^0.5.16;

contract RewardsDistributionRecipient {
    address public rewardsDistribution;

    function notifyRewardAmount(uint256 reward) external;

    modifier onlyRewardsDistribution() {
        require(msg.sender == rewardsDistribution, "Caller is not RewardsDistribution contract");
        _;
    }
}
