// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SupplyChainTracker {
    address public manufacturer;
    enum State { Manufactured, InTransit, Delivered }

    struct Product {
        string serialNumber;
        State status;
        address currentHolder;
    }

    Product public product;
    bool public initialized;

    modifier onlyCurrentHolder() {
        require(msg.sender == product.currentHolder, "Not current holder");
        _;
    }

    function initializeProduct(string memory _serialNumber, address _initialHolder) external {
        require(!initialized, "Product already initialized");
        manufacturer = msg.sender;
        product = Product(_serialNumber, State.Manufactured, _initialHolder);
        initialized = true;
    }

    function updateStatus(State _newStatus, address _nextHolder) external onlyCurrentHolder {
        require(uint8(_newStatus) > uint8(product.status), "Invalid status change");
        product.status = _newStatus;
        product.currentHolder = _nextHolder;
    }
}
