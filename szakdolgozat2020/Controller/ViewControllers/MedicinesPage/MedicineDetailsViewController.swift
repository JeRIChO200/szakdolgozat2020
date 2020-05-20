//
//  MedicineDetailsVC.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 08..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit

// Medicines details page - UIViewController
class MedicineDetailsViewController: UIViewController {
    
    // Struct
    struct Args {
        var medicineModel: MedicineModel
        var pageSource: PageSource
    }
    
    // Variables
    var medicineDetailArgs = Args(medicineModel: MedicineModel.empty, pageSource: .medicines)
    
    // IB Outlets
    @IBOutlet weak var medicineDetailView: UIView!
    @IBOutlet weak var factoryName: UILabel!
    @IBOutlet weak var activeSubstanceName: UILabel!
    @IBOutlet weak var package: UILabel!
    @IBOutlet weak var administrationMethod: UILabel!
    @IBOutlet weak var suggestionForUseButton: CustomMedicineDetailsButton!
    @IBOutlet weak var recommendedDosageButton: CustomMedicineDetailsButton!
    @IBOutlet weak var warningDetailButton: CustomMedicineDetailsButton!
    @IBOutlet weak var dosageButton: CustomDosageButton!
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title                               = medicineDetailArgs.medicineModel.medicineName
        factoryName.text                    = medicineDetailArgs.medicineModel.factoryMedicineName
        activeSubstanceName.text = medicineDetailArgs.medicineModel.activeSubstanceName
        package.text = medicineDetailArgs.medicineModel.package
        administrationMethod.text = medicineDetailArgs.medicineModel.administrationMethod
        suggestionForUseButton.setButtonTitle(NSLocalizedString("medicineDetailSuggestionForUseButton.title", comment: ""))
        recommendedDosageButton.setButtonTitle(NSLocalizedString("medicineDetailRecommendedDosageButton.title", comment: "") + ": " + medicineDetailArgs.medicineModel.administrationMethod)
        warningDetailButton.setButtonTitle(NSLocalizedString("medicineDetailWarningButton.title", comment: ""))
        dosageButton.setButtonTitle(NSLocalizedString("medicineDetailDosageButton.title", comment: ""))
        medicineDetailView.backgroundColor  = .white
        
        if medicineDetailArgs.pageSource == .favourites {
            navigationItem.rightBarButtonItem = nil
        }
        
    }
    
    // functions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewer = segue.destination as? MoreDetailViewController, let detail = sender as? String {
            detailViewer.medicineDetailArgs.oneMedicineDetail = detail
        } else if let dosageViewer = segue.destination as? DosageViewController, let detail = sender as? String {
            dosageViewer.medicineNameArgs.medicineName = detail
        }
        /*
        guard let detailViewer = segue.destination as? MoreDetailViewController, let detail = sender as? String else {
            return
        }
        detailViewer.medicineDetailArgs.oneMedicineDetail = detail
        guard let dosageViewer = segue.destination as? DosageViewController, let dosageDetail = sender as? String else {
            return
        }
        dosageViewer*/
    }
    
    // IB Actions
    @IBAction func suggestionForUseButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: medicineDetailArgs.medicineModel.suggestionForUse)
    }
    @IBAction func recommendedDosageButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: medicineDetailArgs.medicineModel.recommendedDosage)
    }
    @IBAction func warningDetailButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: medicineDetailArgs.medicineModel.warningsContraindications)
    }
    
    @IBAction func dosageButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showDosagePage", sender: medicineDetailArgs.medicineModel.medicineName)
    }
}
