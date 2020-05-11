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
class HospitalsViewController: UIViewController {
    
    // IB Outlets
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var updateLocationButton: UIButton!
    @IBOutlet weak var hospitalTableView: UITableView!
    
    // Constants
    let locationManager = CLLocationManager()
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate            = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        title                               = NSLocalizedString("hospitalsTab.title", comment: "")
        hospitalTableView.backgroundColor   = .white
        informationLabel.text               = NSLocalizedString("hospitalsTab.informationLabel.title", comment: "")
    }
    
    // IB Actions
    @IBAction func updateLocationButtonTapped(_ sender: Any) {
        locationManager.requestLocation()
    }
}

//MARK: - CLLocationManagerDelegate

extension HospitalsViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
