var MyContract = artifacts.require("DarkPatternReporter");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
