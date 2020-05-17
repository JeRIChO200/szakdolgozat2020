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
    func getHospitals(onCompletion: @escaping ([HospitalModel]) -> Void)
}

// Hospital provider class
class HospitalProviderFactory {
    static var mockedIstance: HospitalProviding?
    class func getInstance(source: PageSource) -> HospitalProviding {
        guard mockedIstance == nil else { return mockedIstance! }
        return HospitalProvider()
    }
}

// Hospital provider class
private class HospitalProvider : HospitalProviding {
    func getHospitals(onCompletion: @escaping ([HospitalModel]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            onCompletion([
                // Here is the hospital list that you want to display in hospital page
                // #01 - DONE
                HospitalModel(name: "Dr. Kenessey Albert Kórház-Rendelőintézet", hospitalSCountry: "Nógrád", latitude: 48.080474, longitude: 19.311020, distanceFromUser: 7605),
                // #02 - DONE
                HospitalModel(name: "Szent Lázár Megyei Kórház", hospitalSCountry: "Nógrád", latitude: 48.117368, longitude: 19.814767, distanceFromUser: 8976),
                // #03 - DONE
                HospitalModel(name: "Szent Margit Kórház", hospitalSCountry: "Budapest - III. Kerület", latitude: 47.540093, longitude: 19.030192, distanceFromUser: 503),
                // #04 - DONE
                HospitalModel(name: "Szent János Kórház", hospitalSCountry: "Budapest - XII. Kerület", latitude: 47.508667, longitude: 19.005729, distanceFromUser: 1200),
                // #05 - DONE
                HospitalModel(name: "Magyar Honvédség Egészségügyi Központ Honvédkórház", hospitalSCountry: "Budapest - XIII. Kerület", latitude: 47.531372, longitude: 19.074702, distanceFromUser: 7633),
                // #06 - DONE
                HospitalModel(name: "Dél-pesti Centrumkórház - Országos Hematológiai és Infektológiai Intézet - Szent István telephely", hospitalSCountry: "Budapest - IX. Kerület", latitude: 47.477722, longitude: 19.089355, distanceFromUser: 10312),
                // #07 - DONE
                HospitalModel(name: "SZTE Szent-Györgyi Albert Klinikai Központ Gyermekgyógyászati Klinika és Gyermek-Egészségügyi Központ", hospitalSCountry: "Csongrád", latitude: 46.245357, longitude: 20.150484, distanceFromUser: 242123),
                // #08 - DONE
                HospitalModel(name: "Pécsi Honvéd Kórház", hospitalSCountry: "Baranya", latitude: 46.052106, longitude: 18.229541, distanceFromUser: 186345),
                // #09 - DONE
                HospitalModel(name: "Petz Aladár Megyei Oktató Kórház", hospitalSCountry: "Győr-Moson-Sopron", latitude: 47.677856, longitude: 17.678832, distanceFromUser: 120124),
                // #10 - DONE
                HospitalModel(name: "Borsod-Abaúj-Zemplén Megyei Központi Kórház és Egyetemi Oktatókórház Semmelweis Tagkórház", hospitalSCountry: "Szabolcs-Szatmár-Bereg", latitude: 48.097646, longitude: 20.815311, distanceFromUser: 134213)
            ])
        }
    }
}
