


// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PriceConverter{
     function getLatestPrice() internal  view returns (uint256) {
      AggregatorV3Interface priceFeed =
        AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        (,int256 answer, , , ) = priceFeed.latestRoundData();
        return uint(answer)*1e10;

    }

    function getVersion() internal  view returns (uint256) {
        return
            AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419)
                .version();
    }

    function getconversionrate(uint256 ethamt) internal  view  returns (uint256) {
        uint256 ethprice=getLatestPrice();//2000e18
        uint256 ethinUSD = (ethamt*ethprice)/1e18; //id ethamt 1 then eth in usd is 2000e18
       return ethinUSD;
    }
}
