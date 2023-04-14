pragma solidity ^0.8.0;

interface ICakePool {
    function deposit(uint256 _amount, uint256 _lockDuration) external;

    function withdrawByAmount(uint256 _amount) external;

    function withdraw(uint256 _shares) external;

    function withdrawAll() external;

    function calculatePerformanceFee(address _user) external view returns (uint256);

    function calculateOverdueFee(address _user) external view returns (uint256);

    function calculateWithdrawFee(address _user, uint256 _shares) external view returns (uint256);

    function calculateTotalPendingCakeRewards() external view returns (uint256);

    function getPricePerFullShare() external view returns (uint256);

    function available() external view returns (uint256);

    function balanceOf() external view returns (uint256);
}