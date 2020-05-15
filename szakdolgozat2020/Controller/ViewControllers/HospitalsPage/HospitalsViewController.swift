//
//  HospitalViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 04. 27..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//
import CoreLocation
import UIKit

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
    /*
    private(set) lazy var hospitalProvider: HospitalProviding = {
        inject(args.pageSource)
        }() as! HospitalProviding*/
    var hospitals = [HospitalModel]()
    
    // Constants
    let locationManager = CLLocationManager()
    
    // IB Outlets
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var updateLocationButton: UIButton!
    @IBOutlet weak var hospitalTableView: UITableView!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller.start(with: hospitalArgs.pageSource)
        
        locationManager.delegate            = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        informationLabel.text               = NSLocalizedString("hospitalsTab.informationLabel.title", comment: "")
        
        hospitalTableView.dataSource        = self
        hospitalTableView.delegate          = self
        hospitalTableView.backgroundColor   = .white
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
