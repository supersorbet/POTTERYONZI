pragma solidity ^0.8.0;

import {IPancakeSwapPotteryVault} from "./IPancakeSwapPotteryVault.sol";

library Pottery {
    struct Pot {
        uint256 numOfDraw;
        uint256 totalPrize;
        uint256 drawTime;
        uint256 lastDrawId;
        bool startDraw;
    }

    struct Draw {
        uint256 requestId;
        IPancakeSwapPotteryVault vault;
        uint256 startDrawTime;
        uint256 closeDrawTime;
        address[] winners;
        uint256 prize;
    }
}