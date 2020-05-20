//
//  ProtocolProvideingInjecting.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Protcol ProviginInjecting
protocol ProvidingInjecting {}

//MARK: - ProvidingInjecting

// Extension ProvidingInjecting impelement here
extension ProvidingInjecting {
    
    // Inject medicines
    func medicineInject() -> MedicineProviding {
        MedicineProviderFactory.getIstance()
    }
    
    // Inject favourites
    func favouriteInject() -> MedicineProviding {
        FavouriteProvider(medicineProvider: medicineInject())
    }
    
    // Inject protocols
    func protocolInject() -> ProtocolProviding {
        ProtocolProviderFactory.getInstance()
    }
    
    // Inject hospitals
    func hospitalInject() -> HospitalProviding {
        HospitalProviderFactory.getInstance()
    }
}
