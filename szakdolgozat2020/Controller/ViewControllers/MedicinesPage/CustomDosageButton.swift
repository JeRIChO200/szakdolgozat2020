//
//  CustomDosageButton.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 17..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit

class CustomDosageButton : UIButton {
    
    // Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    // Initializing
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    // Button settings
    private func setupButton() {
        backgroundColor     = Colors.appLightBlue
        titleLabel?.font    = UIFont.boldSystemFont(ofSize: 25)
        layer.borderWidth   = 2
        layer.borderColor   = Colors.appBlue.cgColor
    }
    
    // Function for set the button title
    func setButtonTitle(_ title: String?) {
        setTitle(title, for: .normal)
    }
}
