pragma solidity ^0.8.0;

import "./Pottery.sol";

interface IPancakeSwapPotteryDraw {
    function generatePottery(
        uint256 _totalPrize,
        uint256 _lockTime,
        uint256 _drawTime,
        uint256 _maxTotalDeposit
    ) external;

    function redeemPrizeByRatio() external;

    function startDraw(address _vault) external;

    function forceRequestDraw(address _vault) external;

    function closeDraw(uint256 _drawId) external;

    function claimReward() external;

    function timeToDraw(address _vault) external view returns (bool);

    function rngFulfillRandomWords(uint256 _drawId) external view returns (bool);

    function getWinners(uint256 _drawId) external view returns (address[] memory);

    function getDraw(uint256 _drawId) external view returns (Pottery.Draw memory);

    function getPot(address _vault) external view returns (Pottery.Pot memory);

    function getNumOfDraw() external view returns (uint8);

    function getNumOfWinner() external view returns (uint8);

    function getPotteryPeriod() external view returns (uint256);

    function getTreasury() external view returns (address);
}