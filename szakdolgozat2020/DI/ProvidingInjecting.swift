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
    func medicineInject(pageSource: PageSource) -> MedicineProviding {
        if pageSource == .medicines {
            return MedicineProviderFactory.getIstance()
        }
        return favouriteInject()
    }
    
    // Inject favourites
    func favouriteInject() -> FavouriteProvider {
        FavouriteProvider(medicineProvider: medicineInject(pageSource: PageSource.medicines))
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
