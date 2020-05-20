//
//  ProtocolModel.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 11..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// ProtocolModel struct
struct ProtocolModel {
    var name: String
    var url: String
    
    // Null Object Design Pattern
    static let empty = ProtocolModel(name: "", url: "")
}
