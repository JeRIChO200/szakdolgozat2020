//
//  ProtocolShowViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

// Imports
import UIKit
import WebKit

// ProtocolShowViewController
class ProtocolShowViewController : UIViewController {
    
    // Variables
    struct Args {
        var url: String
    }
    var pdfArgs = Args(url: "")
    
    // IBOutlets
    @IBOutlet weak var pdfWebKit: WKWebView!
    
    // viewDidLoad func
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: pdfArgs.url) else {
            return
        }
        pdfWebKit.load(URLRequest(url: url))
    }
}
