// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import { ICaveatEnforcer } from "../../src/interfaces/ICaveatEnforcer.sol";
import { ModeCode } from "../../src/utils/Types.sol";

/**
 * @title MockCaveatEnforcer
 * @dev This contract is a mock implementation of the ICaveatEnforcer interface for testing purposes.
 */
contract MockCaveatEnforcer is ICaveatEnforcer {
    uint256 public beforeHookCallCount;
    uint256 public afterHookCallCount;

    /**
     * @dev Mocked implementation of the beforeHook function.
     * Increments the beforeHook call count.
     */
    function beforeHook(bytes calldata, bytes calldata, ModeCode, bytes calldata, bytes32, address, address) external {
        beforeHookCallCount++;
    }

    /**
     * @dev Mocked implementation of the afterHook function.
     * Increments the afterHook call count.
     */
    function afterHook(bytes calldata, bytes calldata, ModeCode, bytes calldata, bytes32, address, address) external {
        afterHookCallCount++;
    }
}