//
//  ProtocolProvider.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

// Protocols providing protocol
protocol ProtocolProviding {
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void)
}

// Protocols' source
enum ProtocolSource {
    case protocols
}

// Protocol provider class
class ProtocolProviderFactory {
    static var mockedIstance: ProtocolProviding?
    class func getInstance(source: ProtocolSource) -> ProtocolProviding {
        guard mockedIstance == nil else { return mockedIstance! }
        
        switch source {
        case.protocols:
            return ProtocolProvider()
        @unknown default:
            fatalError()
        }
    }
}

// Protocol provider class
private class ProtocolProvider : ProtocolProviding {
    func getProtocols(onCompletion: @escaping ([ProtocolModel]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            sleep(2)
            onCompletion([
                // #01
                ProtocolModel(name: "A beteg feltalálási heylére juttandó minimum felszerelés", url: "https://oktatas.mentok.hu/pluginfile.php/95203/mod_resource/content/4/A%20beteg%20feltalálási%20helyére%20juttatandó%20minimum%20felszerelés.pdf?fbclid=IwAR3vfEVFMIsf1tp7TAgIXCKNVLzcm6DdcPmlKdVrfoC18HKPZpvcm2xSd18"),
                // #02
                ProtocolModel(name: "Beteg/sérült előrejelzése, átadása, segélykocsi hívása a prehospitális gyakorlatban", url: "https://oktatas.mentok.hu/pluginfile.php/96643/mod_resource/content/1/Betegsérült%20előrejelzése%2C%20átadása%2C%20segélykocsi%20h%C3%ADvása%20a%20prehospitális%20gyakorlatban.pdf?fbclid=IwAR0BEe2kFqY4ZvVxrH1L1UA9_QWrhI8Qz2l3N5lUaAdj6tIv2h89-1BdLws"),
                // #03
                ProtocolModel(name: "3rd", url: ""),
                // #04
                ProtocolModel(name: "4th", url: ""),
                // #05
                ProtocolModel(name: "5th", url: ""),
                // #06
                ProtocolModel(name: "6th", url: ""),
                // #07
                ProtocolModel(name: "7th", url: ""),
                // #08
                ProtocolModel(name: "8th", url: ""),
                // #09
                ProtocolModel(name: "9th", url: ""),
                // #10
                ProtocolModel(name: "10th", url: "")
            ])
        }
    }
}
