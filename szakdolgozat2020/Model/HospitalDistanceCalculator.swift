//
//  HospitalDistanceCalculator.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

class HospitalDistanceCalculator {
    
    private var hospitalProvider: HospitalProviding
    
    init(provider: HospitalProviding) {
        self.hospitalProvider = provider
    }
    
    func getDistanceListHospital(onCompletion: @escaping (HospitalModel?) -> Void) {
        hospitalProvider.getHospitals { (hospitals) in
            onCompletion(
                hospitals.max(by: { (hospitalModel: HospitalModel, hospitalModel2: HospitalModel) -> Bool in
                    hospitalModel.distanceFromUser < hospitalModel2.distanceFromUser
                })
            )
        }
    }
}
