const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Citizens", function () {

    let citizens;

    it("Deploy contract", async function () {
        const Citizens = await ethers.getContractFactory("Citizens");
        citizens = await Citizens.deploy();
        await citizens.deployed();
    });

    it("Register citizens", async function () {
        expect(await citizens.amount_of_citizens()).to.equal(0);
        await citizens.register_citizen("Alice");
        expect(await citizens.amount_of_citizens()).to.equal(1);
        let first_citizen = await citizens.citizens(1);
        let name_of_first_citizen = first_citizen[1];
        expect(name_of_first_citizen).to.equal("Alice");
    });
});
