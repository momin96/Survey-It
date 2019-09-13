//
//  SurveyViewController.swift
//  Survey It
//
//  Created by Nasir Ahmed Momin on 25/04/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import UIKit

public class SurveyViewController: UIViewController {

    // MARK: Internal variables
    @IBOutlet weak var containerView: UIView!
    
    internal var questionCounter = 0
    
    // MARK: Public variables & properties
    public var surveryConfig: SurveyConfig?
    
    // MARK:- Overriadable functions
    
    deinit {
        print("deinit SurveyViewController")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetup()
      
    }
    
    // MARK:- Public functions
    public class func create() -> SurveyViewController {
        
        let bundle = Bundle(for: SurveyViewController.self)
        
        let vc = UIStoryboard(name: "Survey", bundle: bundle).instantiateViewController(withIdentifier: "SurveyViewController") as! SurveyViewController
        return vc
    }
    
    
    
    //MARK:- Private functions
    
    private func initialSetup() {
//        guard let config = surveryConfig else { return }
//        let questionAnswer = config.questionAnswers?.first
//        
//        let qaTableView = QuestionAnswerTableView.create()
//        qaTableView.questionAnswer = questionAnswer
//        
//        
//        containerView.addSubview(qaTableView)
    }
    
}
