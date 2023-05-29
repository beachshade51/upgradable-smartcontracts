const { ethers, upgrades } = require("hardhat");

const PROXY = "0x0D63b65dD365dF9D27C45124973C9459a459B7Bd";

async function main() {
    const BoxV5 = await ethers.getContractFactory("BoxV5");
    console.log("Upgrading Box to V5..");
    await upgrades.upgradeProxy(PROXY, BoxV5);
    console.log("Box upgraded V5");
}

main();