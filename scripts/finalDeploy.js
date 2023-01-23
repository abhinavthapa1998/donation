const hre = require("hardhat");

async function main() {
  const coffee = await hre.ethers.getContractFactory("coffee");
  const contract = await coffee.deploy();
  await contract.deployed();

  console.log("Address of Contract:", contract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
