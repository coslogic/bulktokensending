// Initial code from Roman Storm Multi Sender
// To Use this Dapp: https://bulktokensending.github.io/bulktokensending
pragma solidity 0.4.23;

import "./EternalStorage.sol";
import "./OwnedUpgradeabilityProxy.sol";

/**
 * @title EternalStorageProxy
 * @dev This proxy holds the storage of the token contract and delegates every call to the current implementation set.
 * Besides, it allows to upgrade the token's behaviour towards further implementations, and provides basic
 * authorization control functionalities
 */
contract EternalStorageProxyForBulkTokenSending is OwnedUpgradeabilityProxy, EternalStorage {
    constructor(address _owner) public OwnedUpgradeabilityProxy(_owner) {}
}
