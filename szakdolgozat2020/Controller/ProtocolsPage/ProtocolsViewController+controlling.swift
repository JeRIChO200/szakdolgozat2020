//
//  ProtocolsViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import Foundation
import UIKit

// ProtocolControlling protocol
protocol ProtocolsControlling {
    func start()
    func gatherProtocols()
}

//MARK: - ProtocolsControlling

// ProtocolsControlling protocol implement here
extension ProtocolsViewController: ProtocolsControlling {
    
    // Variables
    var controller: ProtocolsControlling {
        self
    }
    
    // Functions
    func start() {
        presenter.displayTitle()
        gatherProtocols()
    }
    
    func gatherProtocols() {
        protocolProvider.getProtocols { [weak self] protocols in
            DispatchQueue.main.sync {
                self?.presenter.display(protocols)
            }
        }
    }
}
