//
//  ViewController.swift
//  Survey Demo
//
//  Created by Nasir Ahmed Momin on 25/04/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import UIKit
import Survey_It

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBAction func launch(_ sender: UIButton) {
        
        let config = SurveyConfig()
        let svc = SurveyViewController.create()
        self.navigationController?.pushViewController(svc, animated: true)
        
    }
    
}

