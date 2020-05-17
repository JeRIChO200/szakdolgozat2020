//
//  HospitalViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import UIKit
import CoreLocation

// Hospital page - UIViewController
class HospitalsViewController: UIViewController, ProvidingInjecting, UITableViewDelegate {
    
    // Args struct
    struct Args {
        var pageSource: PageSource
    }
    
    // Variables
    var hospitalArgs = Args(pageSource: .hospitals)
    private(set) lazy var hospitalProvider: HospitalProviding = {
        hospitalInject(hospitalArgs.pageSource)
    }()

    var hospitals = [HospitalModel]()
    var sortedHospitals: [HospitalModel] = .init()
    private var locationManager: CLLocationManager!
    private var lastKnownLocation: CLLocation?
    private var filterString: String?
    
    // IB Outlets
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var hospitalTableView: UITableView!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLocationManager()
        
        controller.start(with: hospitalArgs.pageSource)
        
        //calculateDisplayingModel()
        
        informationLabel.text               = NSLocalizedString("hospitalsTab.informationLabel.title", comment: "")
        hospitalTableView.dataSource        = self
        hospitalTableView.delegate          = self
        hospitalTableView.backgroundColor   = .white
        hospitalTableView.rowHeight         = 70.0
    }
    
    private func setupLocationManager() {
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }
    }
    /*
    private func calculateDisplayingModel() {
        var inter = 0
        sortedHospitals = hospitals
            //.filter { self.}
    }*/
}

//MARK: - CLLocationManagerDelegate

extension HospitalsViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        lastKnownLocation = locations.last
        //calculateDisplayingModel()
        hospitalTableView.reloadData()
    }
}
