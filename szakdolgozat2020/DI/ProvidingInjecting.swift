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
    
    func medicineInject(_ source: PageSource) -> MedicineProviding {
        MedicineProviderFactory.getIstance(source: source)
    }
    /*
    func favouriteInject(_ source: PageSource) -> FavouriteProviding {
        FavouriteProviderFactor.getInstance(source: source)
    }*/
    
    func protocolInject(_ source: PageSource) -> ProtocolProviding {
        ProtocolProviderFactory.getInstance(source: source)
    }
    
    func hospitalInject(_ source: PageSource) -> HospitalProviding {
        HospitalProviderFactory.getInstance(source: source)
    }
    
}
