//
//  CustomMedicineDetailsButton.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 17..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit

class CustomMedicineDetailsButton: UIButton {
    
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
        titleLabel?.font    = UIFont.boldSystemFont(ofSize: 20)
    }
    
    // Function for set the button title
    func setButtonTitle(_ title: String?) {
        setTitle(title, for: .normal)
    }
}
