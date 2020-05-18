//
//  MedicineProvider.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 14..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation


// Medicine providing protocol
protocol MedicineProviding {
    func getMedicines(onCompletion: @escaping ([MedicineModel]) -> Void)
}

// Medicines provider class
class MedicineProviderFactory {
    static var mockedInstance: MedicineProviding?
    class func getIstance() -> MedicineProviding {
        guard mockedInstance == nil else { return mockedInstance! }
        return MedicineProvider()
    }
}

// Medicine providder class
private class MedicineProvider: MedicineProviding {
    
    var medicines = [MedicineModel]()
    
    func getMedicines(onCompletion: @escaping ([MedicineModel]) -> Void) {
        DispatchQueue.global(qos: .default).async {
            onCompletion(self.medicinesFromFile())
        }
    }
    
    private func medicinesFromFile() -> [MedicineModel] {
        
        // Medicine list creat here
        
        
        var result = [MedicineModel]()
        
        //#1
        result.append(MedicineModel(
            medicineID: 0,
            medicineName: "A-Gyógyszer",
            factoryMedicineName: "A-Gyari",
            activeSubstanceName: "A-Hatóanyag",
            package: "A-Kiszerelés",
            recommendedDosage: "A-JA",
            administrationMethod: "A-Beadás mód",
            suggestionForUse: "A-Felhasználási javaslatok",
            warningsContraindications: "A-Figyelmeztetések és ellenjavallatok",
            isFavourite: false))
        
        //#2
        result.append(MedicineModel(
            medicineID: 1,
            medicineName: "B-Gyógyszer",
            factoryMedicineName: "B-Gyari",
            activeSubstanceName: "B-Hatóanyag",
            package: "B-Kiszerelés",
            recommendedDosage: "B-JA",
            administrationMethod: "B-Beadás mód",
            suggestionForUse: "B-Felhasználási javaslatok",
            warningsContraindications: "B-Figyelmeztetések és ellenjavallatok",
            isFavourite: true))
        
        //#3
        result.append(MedicineModel(
            medicineID: 2,
            medicineName: "G-Gyógyszer",
            factoryMedicineName: "G-Gyari",
            activeSubstanceName: "G-Hatóanyag",
            package: "G-Kiszerelés",
            recommendedDosage: "G-JA",
            administrationMethod: "G-Beadás mód",
            suggestionForUse: "G-Felhasználási javaslatok",
            warningsContraindications: "G-Figyelmeztetések és ellenjavallatok",
            isFavourite: false))
        
        //#4
        result.append(MedicineModel(
            medicineID: 3,
            medicineName: "O-Gyógyszer",
            factoryMedicineName: "O-Gyari",
            activeSubstanceName: "O-Hatóanyag",
            package: "O-Kiszerelés",
            recommendedDosage: "O-JA",
            administrationMethod: "O-Beadás mód",
            suggestionForUse: "O-Felhasználási javaslatok",
            warningsContraindications: "O-Figyelmeztetések és ellenjavallatok",
            isFavourite: false))
        
        //#5
        result.append(MedicineModel(
            medicineID: 4,
            medicineName: "Az-Gyógyszer",
            factoryMedicineName: "Az-Gyari",
            activeSubstanceName: "Az-Hatóanyag",
            package: "Az-Kiszerelés",
            recommendedDosage: "Az-JA",
            administrationMethod: "Az-Beadás mód",
            suggestionForUse: "Az-Felhasználási javaslatok",
            warningsContraindications: "Az-Figyelmeztetések és ellenjavallatok",
            isFavourite: false))
        
        //#6
        result.append(MedicineModel(
            medicineID: 5,
            medicineName: "Ac-Gyógyszer",
            factoryMedicineName: "Ac-Gyari",
            activeSubstanceName: "Ac-Hatóanyag",
            package: "Ac-Kiszerelés",
            recommendedDosage: "Ac-JA",
            administrationMethod: "Ac-Beadás mód",
            suggestionForUse: "Ac-Felhasználási javaslatok",
            warningsContraindications: "Ac-Figyelmeztetések és ellenjavallatok",
            isFavourite: false))
        
        return result
    }
}
