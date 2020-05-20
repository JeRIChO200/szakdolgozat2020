//
//  ProtocolProvider.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import Foundation

// Protocol providing protocol
protocol ProtocolProviding {
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void)
}

// Protocol provider class
class ProtocolProviderFactory {
    
    // Variables
    static var mockedIstance: ProtocolProviding?
    
    // Functions
    class func getInstance() -> ProtocolProviding {
        guard mockedIstance == nil else { return mockedIstance! }
        return ProtocolProvider()
    }
}

// Protocol provider class
private class ProtocolProvider : ProtocolProviding {
    
    // Get protocols here
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            onCompletion([
                
                // Here is the protocol list that you want to display in protocol page --> I HAVE TO DONE THIS!!!!!
                
                ProtocolModel(name: "AProtokoll - 1", url: ""),
                ProtocolModel(name: "ABProtokoll - 2", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                ProtocolModel(name: "ZProtokoll - 45", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                ProtocolModel(name: "XProtokoll - 30", url: "https://www.index.hu/"),
                ProtocolModel(name: "XPRO-tokoll - 34", url: "https://www.444.hu/"),
                ProtocolModel(name: "BDProtkoll - 30", url: "http://www.africau.edu/images/default/sample.pdf"),
                ProtocolModel(name: "CBProtokoll - 44", url: ""),
                ProtocolModel(name: "CZ Protokoll - 51", url: ""),
                ProtocolModel(name: "FZH Protokoll - 40", url: ""),
                ProtocolModel(name: "ATH protokoll - 14", url: ""),
                ProtocolModel(name: "ABH Protokoll - 40", url: "https://elearning.uni-obuda.hu/main/pluginfile.php/415651/mod_resource/content/1/03-Virtualization%20Technologies.pdf"),
                ProtocolModel(name: "AZH Protokoll - 60", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                ProtocolModel(name: "GZT Protkoll - 40", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                ProtocolModel(name: "D Protokoll - 30", url: ""),
                ProtocolModel(name: "T40 - Protokoll - 045", url: ""),
                ProtocolModel(name: "ZG - Protokoll - 01", url: ""),
                ProtocolModel(name: "D Protkoll - 50", url: ""),
                ProtocolModel(name: "ZG6 Protokoll - 20", url: ""),
                ProtocolModel(name: "ACG Protokoll - 40", url: ""),
                ProtocolModel(name: "EFG Protokoll - 40", url: "")
            ])
        }
    }
}
