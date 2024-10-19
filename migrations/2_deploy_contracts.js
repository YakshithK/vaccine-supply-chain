// migrations/2_deploy_contracts.js
const VaccineTracker = artifacts.require("VaccineTracker");

module.exports = function(deployer) {
    deployer.deploy(VaccineTracker, {
      gas: 500000,
      gasPrice: web3.utils.toWei('20', 'gwei'),  // Use gasPrice instead of EIP-1559 fields
    });
  };
  