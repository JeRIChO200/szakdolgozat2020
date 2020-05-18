//
//  MedicineModel.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

typealias MedicineID = Int

struct MedicineModel : Codable {
    let medicineID: MedicineID
    let medicineName: String
    let factoryMedicineName: String
    let activeSubstanceName: String
    let package: String
    let recommendedDosage: String
    let administrationMethod: String
    let suggestionForUse: String
    let warningsContraindications: String
    
    static var empty = MedicineModel(
        medicineID: 0,
        medicineName: "",
        factoryMedicineName: "",
        activeSubstanceName: "",
        package: "",
        recommendedDosage: "",
        administrationMethod: "",
        suggestionForUse: "",
        warningsContraindications: "")
}
