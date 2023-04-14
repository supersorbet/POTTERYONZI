pragma solidity ^0.8.0;

interface IRandomNumberGenerator {
    function getRandomWords(uint256 _requestId) external view returns (uint256[] memory);

    function getLatestRequestId(address _vault) external view returns (uint256);

    function fulfillRequest(uint256 _requestId) external view returns (bool);

    function requestRandomWords(uint32 _numWords, address _vault) external returns (uint256);
}