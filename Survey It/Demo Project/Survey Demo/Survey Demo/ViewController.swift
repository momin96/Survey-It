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
        
        let q1 = "What is this "
        let a1 = ["A", "B", "C"]
        let i1 = 1
        
        let q2 = "Who is this "
        let a2 = ["X", "Y", "Z"]
        let i2 = 0
        
        let q3 = "when is this "
        let a3 = ["s", "d", "f"]
        let i3 = 2
        
        let q4 = "How is this "
        let a4 = ["q", "w", "e"]
        let i4 = 1
        
        let qa1 = QuestionAnswers(question: q1, answers: a1, correctAnswerIndex: i1)
        let qa2 = QuestionAnswers(question: q2, answers: a2, correctAnswerIndex: i2)
        let qa3 = QuestionAnswers(question: q3, answers: a3, correctAnswerIndex: i3)
        let qa4 = QuestionAnswers(question: q4, answers: a4, correctAnswerIndex: i4)

        let config = SurveyConfig.init(qa: [qa1, qa2, qa3, qa4])
        
        let svc = SurveyViewController.create()
        svc.surveryConfig = config
        
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
}

