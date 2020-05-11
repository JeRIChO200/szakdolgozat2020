//
//  HospitalProvideFactory.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

// Hospital providing protocol
protocol HospitalProviding {
    func getHospitals(onCompletion: @escaping ([Hospital]) -> Void)
}

// Hospital provider
class HospitalProviderFactory {
    static var mockedIstance: HospitalProviding?
    class func getInstance() -> HospitalProviding {
        guard mockedIstance == nil else { return mockedIstance! }
        return HospitalProvider()
    }
}

private class HospitalProvider : HospitalProviding {
    func getHospitals(onCompletion: @escaping ([Hospital]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            sleep(2)
            onCompletion([
                // #01
                Hospital(name: "DR. Kenessey Albert Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #02
                Hospital(name: "Szent Lázár Megyei Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #03
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #04
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #05
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #06
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #07
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #08
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #09
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10),
                // #10
                Hospital(name: "Szent Margit Kórház", latitude: 0.0, longitude: 1.0, distanceFromTheUser: 10)
            ])
        }
    }
}
