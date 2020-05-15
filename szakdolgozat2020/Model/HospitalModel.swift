//
//  HospitalModel.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

struct HospitalModel {
    var name: String
    var hospitalSCountry: String
    var latitude: Double
    var longitude: Double
    
    static let empty = HospitalModel(name: "", hospitalSCountry: "", latitude: 0.0, longitude: 0.0)
}
