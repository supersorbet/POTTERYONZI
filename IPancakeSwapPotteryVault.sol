pragma solidity ^0.8.0;

import {IERC4626} from "./IERC4626.sol";
import {Vault} from "./Vault.sol";

interface IPancakeSwapPotteryVault is IERC4626 {
    function lockCake() external;

    function unlockCake() external;

    function draw(uint256[] memory _nums) external view returns (address[] memory users);

    function getNumberOfTickets(address _user) external view returns (uint256);

    function getLockTime() external view returns (uint256);

    function getMaxTotalDeposit() external view returns (uint256);

    function passLockTime() external view returns (bool);

    function getStatus() external view returns (Vault.Status);

    function generateUserId(address _user) external view returns (bytes32);
}