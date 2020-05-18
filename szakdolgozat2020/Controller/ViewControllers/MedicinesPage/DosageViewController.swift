//
//  DosageVC.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 08..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Dosage page - UIViewController
class DosageViewController: UIViewController, UITextFieldDelegate {
    // kg / g
    
    
    
    // Struct
    struct Args {
        var medicineName: String
    }
    
    // Variables
    var medicineNameArgs = Args(medicineName: "")
    
    @IBOutlet weak var medicineDosageSubTitle: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var dosageRecommendedNumber: UITextField!
    @IBOutlet weak var weightDeleteButton: CustomDosageButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("medicineDosage.title", comment: "")
        medicineDosageSubTitle.text = medicineNameArgs.medicineName + " gyógyszer adagolása"
        weightTextField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        weightTextField.becomeFirstResponder()/*
        weightTextField.addTarget(self, action: #Selector(textFieldDidC), for: .editingChanged)*/
    }
    
    @IBAction func weightDeleteButtonTapped(_ sender: Any) {
        weightTextField.text = ""
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if weightTextField.text == "" {
            dosageRecommendedNumber.text = "0000"
        } else {
            dosageRecommendedNumber.text = weightTextField.text
        }
    }
}
