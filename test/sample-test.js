const { expect } = require("chai");
describe("Proof Of Existence", function() {

  //TODO BeforeEach Deployed smart contract

  it("Check document if existed", async function() {
    const PoE = await ethers.getContractFactory("ProofOfExistence");
    const poe = await PoE.deploy();

    const checkdoc = await poe.checkDocument("Hello world");
    

    expect(checkdoc).to.equal(false);
  });

  it("Notarize document", async function() {
    /**
     * 
     * do something ...
     * 
     */
  });

  it("proofFor document", async function() {
    /**
     * 
     * do something ...
     * 
     */
  });

});

