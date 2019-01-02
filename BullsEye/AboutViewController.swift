//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Chandra on 31/12/18.
//  Copyright © 2018 Chandra Gopalaiah. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: path)
            let request = URLRequest(url: url)
            webView.load(request)
        }

    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
