module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Localhost (default)
      port: 8545,        // Port for Ganache
      network_id: "*",   // Match any network id
    },
  },
  // Solidity compiler settings
  compilers: {
    solc: {
      version: "0.8.0",  // Match the Solidity version used in your contract
    },
  },
};
