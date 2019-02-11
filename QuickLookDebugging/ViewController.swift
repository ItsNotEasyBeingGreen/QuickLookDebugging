//
//  ViewController.swift
//  QuickLookDebugging
//
//  Created by Mark Cornelisse on 11/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var curlView: CurlView!
    
    // MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let color = UIColor(red: 0.8, green: 0.5, blue: 0.4, alpha: 1.0)
        self.view.backgroundColor = color
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    // MARK: UIResponder
    
    // MARK: NSObject
}

