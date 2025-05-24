async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying SupplyChainTracker contract with account:", deployer.address);

  const SupplyChainTracker = await ethers.getContractFactory("SupplyChainTracker");
  const supplyChainTracker = await SupplyChainTracker.deploy();

  await supplyChainTracker.deployed();

  console.log("SupplyChainTracker deployed to:", supplyChainTracker.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
