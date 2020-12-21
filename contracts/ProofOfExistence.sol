// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.8.0;

/** 
 * @author AIS NEXT BCD (BlockChain Development) Team
 * @title Proof of Existence (PoE)
 * @dev Applied Proof Proof of Existence on Ethereum in Best practices.
 *      You can applied this example in other project use-case such as 
 *        - Product Authentication
 *        - IPFS Hash Proof
 */
contract ProofOfExistence {

  mapping (bytes32 => bool) private proofs;
  
  /** 
    * @param proof (bytes32)
    * @dev store a proof of existence in the contract state
    */
  function storeProof(bytes32 proof) internal {
    proofs[proof] = true;
  }
  
  /** 
   * @param document (string)
   * @dev calculate and store the proof for a document
   */
  function notarize(string calldata document) external {
    require(!checkDocument(document),"existed");
    bytes32 proof = proofFor(document);
    storeProof(proof);
  }
  
  /** 
   * @param document (string)
   * @dev helper function to get a document's keccak256
   * @return encrypt document in 0x(keccak256(document))
   */
  function proofFor(string memory document) pure public returns (bytes32) {
    require(bytes(document).length > 0,"cannot be empty");
    return keccak256(bytes(document));
  }
  
  /**
   * @param document (string)
   * @dev check if a document has been notarized,
   * @return true || false
   */
  function checkDocument(string memory document) public view returns (bool) {
    bytes32 proof = proofFor(document);
    return hasProof(proof);
  }

  /**
   * @param proof (bytes32)
   * @dev helper function to get a document's by Hash
   * @return true if existed and false if not existed in mapping Data dictionary 
   */
  function hasProof(bytes32 proof) internal view returns(bool) {
    return proofs[proof];
  }
}