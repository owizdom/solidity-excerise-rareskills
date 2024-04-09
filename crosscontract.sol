// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

// Interface for PriceOracle1
interface IPriceOracle1 {
    function price() external view returns (uint256);
}

// Interface for PriceOracle2
interface IPriceOracle2 {
    function price() external view returns (uint256);
}

// PriceOracle1 contract
contract PriceOracle1 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}

// PriceOracle2 contract
contract PriceOracle2 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}

// CrossContract that interacts with PriceOracle1 and PriceOracle2
contract CrossContract {
    function getLowerPrice(
        address _priceOracle1,
        address _priceOracle2
    ) external view returns (uint256) {
        // Cast the addresses to the interfaces
        IPriceOracle1 priceOracle1 = IPriceOracle1(_priceOracle1);
        IPriceOracle2 priceOracle2 = IPriceOracle2(_priceOracle2);

        // Fetch the prices from both oracles
        uint256 price1 = priceOracle1.price();
        uint256 price2 = priceOracle2.price();

        // Return the lower price
        return price1 < price2 ? price1 : price2;
    }
}
