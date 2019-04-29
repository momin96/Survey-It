//
//  SurveyConfig.swift
//  Survey It
//
//  Created by Nasir Ahmed Momin on 25/04/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import Foundation

public class SurveyConfig {
    
    var questionAnswers: [QuestionAnswers]?
    
    public init(qa list: [QuestionAnswers]) {
        self.questionAnswers = list
    }
}


public struct QuestionAnswers {
    
    var questionIndex: Int?
    
    var question: String?
    var answers: [String]?
    var correctAnswerIndex: Int?
    
    public init(question q: String, answers ans: [String], correctAnswerIndex: Int) {
        
        if correctAnswerIndex >= ans.count {
            let e = NSException(name:NSExceptionName(rawValue: "Out of bound") , reason: "Correct Answer index is out of bound", userInfo: nil)
            e.raise()
            return
        }
        
        self.question = q;
        self.answers = ans
        self.correctAnswerIndex = correctAnswerIndex
    }
}
