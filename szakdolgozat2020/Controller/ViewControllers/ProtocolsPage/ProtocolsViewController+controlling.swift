//
//  ProtocolsViewController+controlling.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol ProtocolsControlling {
    func start(with protocolSource: ProtocolSource)
    func gatherProtocols()
}

//MARK: - ProtocolsControlling

extension ProtocolsViewController: ProtocolsControlling {
    
    var controller: ProtocolsControlling {
        self
    }
    
    func start(with protocolSource: ProtocolSource) {
        presenter.displayTitle(by: args.protocolSource)
        gatherProtocols()
    }
    
    func gatherProtocols() {
        provider.getProtocols { [weak self] protocols in
            DispatchQueue.main.sync {
                self?.presenter.display(protocols)
            }
        }
    }
}
