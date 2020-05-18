//
//  ProtocolProvideingInjecting.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

protocol ProvidingInjecting {}

//MARK: - ProvidingInjecting

extension ProvidingInjecting {
    
    func medicineInject() -> MedicineProviding {
        MedicineProviderFactory.getIstance()
    }
    
    func favouriteInject() -> MedicineProviding {
        FavouriteProvider(medicineProvider: medicineInject())
    }
    
    func protocolInject() -> ProtocolProviding {
        ProtocolProviderFactory.getInstance()
    }
    
    func hospitalInject() -> HospitalProviding {
        HospitalProviderFactory.getInstance()
    }
}
