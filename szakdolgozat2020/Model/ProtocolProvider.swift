//
//  ProtocolProvider.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

// Protocol providing protocol
protocol ProtocolProviding {
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void)
}

// Protocol provider class
class ProtocolProviderFactory {
    static var mockedIstance: ProtocolProviding?
    class func getInstance() -> ProtocolProviding {
        guard mockedIstance == nil else { return mockedIstance! }
        return ProtocolProvider()
    }
}

// Protocol provider class
private class ProtocolProvider : ProtocolProviding {
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            onCompletion([
                // Here is the protocol list that you want to display in protocol page
                ProtocolModel(name: "A beteg feltalálási helyére juttandó minimum felszerelés", url: "https://elearning.uni-obuda.hu/main/pluginfile.php/415651/mod_resource/content/1/03-Virtualization%20Technologies.pdf"),
                ProtocolModel(name: "Beteg/sérült előrejelzése, átadása, segélykocsi hívása a prehospitális gyakorlatban", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                ProtocolModel(name: "Gyógyszerelési protokoll", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                ProtocolModel(name: "4th", url: "https://www.index.hu/"),
                ProtocolModel(name: "5th", url: "https://www.444.hu/"),
                ProtocolModel(name: "6th", url: "http://www.africau.edu/images/default/sample.pdf"),
                ProtocolModel(name: "7th", url: ""),
                ProtocolModel(name: "8th", url: ""),
                ProtocolModel(name: "9th", url: ""),
                ProtocolModel(name: "10th", url: ""),
                ProtocolModel(name: "Anerereteg feltalálási helyére juttandó minimum felszerelés", url: "https://elearning.uni-obuda.hu/main/pluginfile.php/415651/mod_resource/content/1/03-Virtualization%20Technologies.pdf"),
                ProtocolModel(name: "ABeteg/sérült előrejelzése, átadása, segélykocsi hívása a prehospitális gyakorlatban", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                ProtocolModel(name: "Az Egészségügyi protokoll", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                ProtocolModel(name: "4th", url: ""),
                ProtocolModel(name: "5th", url: ""),
                ProtocolModel(name: "7th", url: ""),
                ProtocolModel(name: "7th", url: ""),
                ProtocolModel(name: "8th", url: ""),
                ProtocolModel(name: "9th", url: ""),
                ProtocolModel(name: "10th", url: "")
            ])
        }
    }
}
