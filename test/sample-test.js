const { expect } = require("chai");
describe("Proof Of Existence", function() {

  const SAMPLE_TEXT = "Hello world";
  let contract;

  beforeEach(async () => {
    const CONTRACT = await ethers.getContractFactory("ProofOfExistence");
    contract = await CONTRACT.deploy();
  });

  it("notarize document", async function() {
    await contract.notarize(SAMPLE_TEXT)
    const result = await contract.checkDocument(SAMPLE_TEXT);
    expect(result).to.equal(true);
  });

  it("check document", async function() {
    const result = await contract.checkDocument('foo bar');
    expect(result).to.equal(false);
  });

  it("proofFor document", async function() {
    const bytes = ethers.utils.toUtf8Bytes(SAMPLE_TEXT);
    const keccak256 = ethers.utils.keccak256(bytes);
    const result = await contract.proofFor(SAMPLE_TEXT);
    expect(result).to.equal(keccak256);
  });
});

