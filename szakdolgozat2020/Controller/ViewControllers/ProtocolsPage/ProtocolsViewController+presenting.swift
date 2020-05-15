//
//  ProtocolListdisplaying.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

protocol ProtocolsPresenting {
    func displayTitle(by pageSource: PageSource)
    func display(_ protocols: [ProtocolModel])
}

//MARK: - ProtocolsPresenting

extension ProtocolsViewController: ProtocolsPresenting {
    
    var presenter: ProtocolsPresenting {
        self
    }
    
    func displayTitle(by pageSource: PageSource) {
        if pageSource == .protocols {
            title = NSLocalizedString("protocolsTab.title", comment: "")
        }
    }
    
    func display(_ protocols: [ProtocolModel]) {
        self.protocols = protocols
        protocolTableView.reloadData()
    }
}

//MARK: - UITableViewDataSource

extension ProtocolsViewController: UITableViewDataSource {
    
    // Number of raw in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        protocols.count
    }
    
    // Displaying a cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "protocolCell") as? ProtocolTableViewCell else {
            return UITableViewCell()
        }
        let protocolModel = protocols[indexPath.row]
        cell.display(protocolModel: protocolModel)
        return cell
    }
    
    // Header -
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionLetters[section]
    }
    
    // Header - Group letter
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header                  = view as! UITableViewHeaderFooterView
        header.textLabel?.font      = UIFont.systemFont(ofSize: 25, weight: UIFont.Weight.medium)
        header.textLabel?.textColor = .red
        header.backgroundColor      = .green
    }
    
    // Right side - Section's number - DONE
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionLetters.count
    }
    
    // Right side - Section's letter - DONE
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return sectionLetters
    }
}
