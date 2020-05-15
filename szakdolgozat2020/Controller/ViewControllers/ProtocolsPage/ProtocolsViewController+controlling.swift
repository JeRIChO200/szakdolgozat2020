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
    func start(with pageSource: PageSource)
    func gatherProtocols()
}

//MARK: - ProtocolsControlling

extension ProtocolsViewController: ProtocolsControlling {
    
    var controller: ProtocolsControlling {
        self
    }
    
    func start(with pageSource: PageSource) {
        presenter.displayTitle(by: protocolArgs.pageSource)
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
