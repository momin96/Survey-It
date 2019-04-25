//
//  SurveyViewController.swift
//  Survey It
//
//  Created by Nasir Ahmed Momin on 25/04/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import UIKit

public class SurveyViewController: UIViewController {

    
    public override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    public class func create() -> SurveyViewController {
        
        let vc = UIStoryboard(name: "Survey", bundle: nil).instantiateViewController(withIdentifier: "SurveyViewController") as! SurveyViewController
        return vc
    }
}
