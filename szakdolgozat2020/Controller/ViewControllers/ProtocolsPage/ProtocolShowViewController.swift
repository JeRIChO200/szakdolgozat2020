//
//  ProtocolShowViewController.swift
//  szakdolgozat2020
//
//  Created by Tóth Zoltán on 2020. 05. 15..
//  Copyright © 2020. Tóth Zoltán. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class ProtocolShowViewController : UIViewController {
    
    @IBOutlet weak var pdfWebKit: WKWebView!
    
    struct Args {
        var url: String
    }
    
    var args = Args(url: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let webView = WKWebView(frame: view.frame)
        guard let url = URL(string: args.url) else {
            return
        }
        pdfWebKit.load(URLRequest(url: url))
        //view.addSubview(webView)
    }
}
