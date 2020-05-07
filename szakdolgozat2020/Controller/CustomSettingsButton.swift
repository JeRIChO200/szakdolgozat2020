//
//  CustomSettingsButton.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 07..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// My custom setting button class
class CustomSettingsButton: UIButton {
    
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
    func setupButton() {
        // setShadow()
        setTitleColor(.white, for: .normal)
        backgroundColor     = Colors.appBlue
        titleLabel?.font    = UIFont(name: "Helvetica Neue", size: 18)
        layer.cornerRadius  = 15
        layer.borderWidth   = 1.0
        layer.borderColor   = UIColor.darkGray.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 90).isActive = true
        widthAnchor.constraint(equalToConstant: 374).isActive = true
        centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    // Button's shadow
    private func setShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    // Function if button get tapped
    func shake() {
        let shake           = CABasicAnimation(keyPath: "position")
        shake.duration      = 0.1
        shake.repeatCount   = 2
        shake.autoreverses  = true
        
        let fromPoint       = CGPoint(x: center.x - 8, y: center.y)
        let fromValue       = NSValue(cgPoint: fromPoint)
        
        let toPoint         = CGPoint(x: center.x + 8, y: center.y)
        let toValue         = NSValue(cgPoint: toPoint)
        
        shake.fromValue     = fromValue
        shake.toValue       = toValue
        
        layer.add(shake, forKey: "position")
    }
}
