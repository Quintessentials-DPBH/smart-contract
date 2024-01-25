var MyContract = artifacts.require("StoreValue");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
