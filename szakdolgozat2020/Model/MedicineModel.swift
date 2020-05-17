//
//  MedicineModel.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

struct MedicineModel {
    let medicineName: String
    let factoryMedicineName: String
    let activeSubstanceName: String
    let package: String
    let recommendedDosage: String
    let administrationMethod: String
    let suggestionForUse: String
    let warningsContraindications: String
    var isFavourite: Bool
    
    static var empty = MedicineModel(
        medicineName: "",
        factoryMedicineName: "",
        activeSubstanceName: "",
        package: "",
        recommendedDosage: "",
        administrationMethod: "",
        suggestionForUse: "",
        warningsContraindications: "",
        isFavourite: false)
    
    /*
    init(medicineName: String, factoryMedicineName: String, activeSubstanceName: String, package: String, recommendedDosage: String, administrationMethod: String, suggestionForUse: String, warningsContraindications: String) {
        self.medicineName               = medicineName
        self.factoryMedicineName        = factoryMedicineName
        self.activeSubstanceName        = activeSubstanceName
        self.package                    = package
        self.recommendedDosage          = recommendedDosage
        self.administrationMethod       = administrationMethod
        self.suggestionForUse           = suggestionForUse
        self.warningsContraindications  = warningsContraindications
        self.isFavourite                = false
    }*/
}
