//
//  FavouriteProvider.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 17..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

//CRUD

protocol FavouriteProviding: MedicineProviding {
    func getFavouriteMedicinesIDs() -> [MedicineID]
    func add(medicineID: MedicineID)
    func remove(medicineID: MedicineID)
}

class FavouriteProvider: FavouriteProviding {
    
    let medicineProvider: MedicineProviding
    
    init(medicineProvider: MedicineProviding) {
        self.medicineProvider = medicineProvider
    }
    
    func getMedicines(onCompletion: @escaping ([MedicineModel]) -> Void) {
        let favouriteMedicineIDs = loadMedicineIDs()
        medicineProvider.getMedicines {
            onCompletion( $0.filter({ (medicineModel) -> Bool in
                favouriteMedicineIDs.contains(medicineModel.medicineID)
            }))
        }
    }
    
    func getFavouriteMedicinesIDs() -> [MedicineID] {
        loadMedicineIDs()
    }
    
    func add(medicineID: MedicineID) {
        var medicineIDs = loadMedicineIDs()
        
        if !medicineIDs.contains(medicineID) {
            medicineIDs.append(medicineID)
            saveMedicineIDs(medicineIDs: medicineIDs)
        }
    }
    
    func remove(medicineID: MedicineID) {
        var medicineIDs = loadMedicineIDs()
        medicineIDs.removeAll(where: { $0 == medicineID})
        saveMedicineIDs(medicineIDs: medicineIDs)
    }
    
    private func loadMedicineIDs() -> [MedicineID] {
        UserDefaults.standard.object(forKey: "favourites") as? [MedicineID] ?? []
    }
    
    private func saveMedicineIDs(medicineIDs: [MedicineID]) {
        UserDefaults.standard.set(medicineIDs, forKey: "favourites")
    }
}
