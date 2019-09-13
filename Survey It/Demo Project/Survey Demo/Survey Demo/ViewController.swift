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
        
        let config = createSurveyConfig()
  
//        let svc = SurveyViewController.create()
//        svc.surveryConfig = config
        
//        self.navigationController?.pushViewController(svc, animated: true)
    }

    
    func createSurveyConfig() -> SurveyConfig {
        
        let q1 = Question(question: "This is question 1 ?")
        let a1 = Answer(options: ["a1", "b1", "c1", "d1", "e1"], correctAnswer: "e1")
        let qa1 = QuestionAnswers(question: q1, answers: a1)
        
        let q2 = Question(question: "This is question 2 ?")
        let a2 = Answer(options: ["a2", "b2", "c2", "d2", "e2"], correctAnswer: "a2")
        let qa2 = QuestionAnswers(question: q2, answers: a2)
        
        let q3 = Question(question: "This is question 3 ?")
        let a3 = Answer(options: ["a3", "b3", "c3", "d3", "e3"], correctAnswer: "d3")
        let qa3 = QuestionAnswers(question: q3, answers: a3)
        
        let q4 = Question(question: "This is question 4 ?")
        let a4 = Answer(options: ["a4", "b4", "c4", "d4", "e4"], correctAnswer: "b4")
        let qa4 = QuestionAnswers(question: q4, answers: a4)
        
        let q5 = Question(question: "This is question 5 ?")
        let a5 = Answer(options: ["a5", "b5", "c5", "d5", "e5"], correctAnswer: "b5")
        let qa5 = QuestionAnswers(question: q5, answers: a5)
        
        
        let config = SurveyConfig([qa1, qa2, qa3, qa4, qa5])
        
        return config
    }
}

