//
//  ProtocolProvideingInjecting.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation

protocol ProvidingInjecting {}

//MARK: - ProtocolProvidingInjecting

extension ProvidingInjecting {
    func protocolInject(_ source: PageSource) -> ProtocolProviding {
        ProtocolProviderFactory.getInstance(source: source)
    }
    
    func hospitalInject(_ source: PageSource) -> HospitalProviding {
        HospitalProviderFactory.getInstance(source: source)
    }
}
