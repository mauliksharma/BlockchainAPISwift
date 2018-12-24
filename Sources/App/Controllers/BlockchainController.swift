//
//  BlockchainController.swift
//  App
//
//  Created by Maulik Sharma on 21/12/18.
//

import Foundation
import Vapor

class BlockchainController {
    
    var blockchainService :BlockchainService
    
    init() {
        self.blockchainService = BlockchainService()
    }
    
    func mine(req :Request, transaction :Transaction) -> Block {
        return self.blockchainService.getNextBlock(transactions :[transaction])
    }
    
    func getBlockchain(req :Request) -> Blockchain {
        return self.blockchainService.getBlockchain()
    }
    
}
