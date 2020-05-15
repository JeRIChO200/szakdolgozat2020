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
    class func getInstance(source: PageSource) -> ProtocolProviding {
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
                // #01
                ProtocolModel(name: "A beteg feltalálási heylére juttandó minimum felszerelés", url: "https://oktatas.mentok.hu/pluginfile.php/95203/mod_resource/content/4/A%20beteg%20feltalálási%20helyére%20juttatandó%20minimum%20felszerelés.pdf?fbclid=IwAR3vfEVFMIsf1tp7TAgIXCKNVLzcm6DdcPmlKdVrfoC18HKPZpvcm2xSd18"),
                // #02
                ProtocolModel(name: "Beteg/sérült előrejelzése, átadása, segélykocsi hívása a prehospitális gyakorlatban", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                // #03
                ProtocolModel(name: "Gyógyszerelési protokoll", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                // #04
                ProtocolModel(name: "4th", url: "https://www.index.hu/"),
                // #05
                ProtocolModel(name: "5th", url: "https://www.444.hu/"),
                // #06
                ProtocolModel(name: "6th", url: "http://www.africau.edu/images/default/sample.pdf"),
                // #07
                ProtocolModel(name: "7th", url: ""),
                // #08
                ProtocolModel(name: "8th", url: ""),
                // #09
                ProtocolModel(name: "9th", url: ""),
                // #10
                ProtocolModel(name: "10th", url: ""),
                // #11
                ProtocolModel(name: "A beteg feltalálási heylére juttandó minimum felszerelés", url: "https://oktatas.mentok.hu/pluginfile.php/95203/mod_resource/content/4/A%20beteg%20feltalálási%20helyére%20juttatandó%20minimum%20felszerelés.pdf?fbclid=IwAR3vfEVFMIsf1tp7TAgIXCKNVLzcm6DdcPmlKdVrfoC18HKPZpvcm2xSd18"),
                // #12
                ProtocolModel(name: "Beteg/sérült előrejelzése, átadása, segélykocsi hívása a prehospitális gyakorlatban", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                // #13
                ProtocolModel(name: "Gyógyszerelési protokoll", url: "http://www.downalapitvany.hu/sites/default/files/Gyógyszerelési%20protokoll.pdf?fbclid=IwAR03Oloc9WmZq3CkaGJ9weKwbL4RPY6E-btvsNt2baqlSmbPsefdw69yrAQ"),
                // #14
                ProtocolModel(name: "4th", url: ""),
                // #15
                ProtocolModel(name: "5th", url: ""),
                // #16
                ProtocolModel(name: "6th", url: ""),
                // #17
                ProtocolModel(name: "7th", url: ""),
                // #18
                ProtocolModel(name: "8th", url: ""),
                // #19
                ProtocolModel(name: "9th", url: ""),
                // #20
                ProtocolModel(name: "10th", url: "")
            ])
        }
    }
}
