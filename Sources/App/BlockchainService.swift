//
//  BlockchainService.swift
//  App
//
//  Created by Maulik Sharma on 21/12/18.
//

import Foundation

class BlockchainService {
    
    var blockchain :Blockchain!
    
    init() {
        self.blockchain = Blockchain(genesisBlock: Block())
    }
    
    func getNextBlock(transactions :[Transaction]) -> Block {
        let block = self.blockchain.getNextBlock(transactions: transactions)
        self.blockchain.addBlock(block)
        return block
    }
    
    func getBlockchain() -> Blockchain {
        return self.blockchain
    }
    
}
