const { ethers, upgrades } = require("hardhat");

const PROXY = "0x0D63b65dD365dF9D27C45124973C9459a459B7Bd";

async function main() {
    const BoxV4 = await ethers.getContractFactory("BoxV4");
    console.log("Upgrading Box to V4..");
    await upgrades.upgradeProxy(PROXY, BoxV4);
    console.log("Box upgraded V4");
}

main();