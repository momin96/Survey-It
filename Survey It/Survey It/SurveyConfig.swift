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
    
    public init(_ list: [QuestionAnswers]) {
        self.questionAnswers = list
    }
}


public struct QuestionAnswers {

    var question: Question?
    var answer: Answer?
    
    public init(question q: Question, answers ans: Answer) {
        self.question = q
        self.answer = ans
    }
}

public enum QuestionAnswerType {
    case A
}

public struct Question {
    
    public var questionText: String?
    public var type: QuestionAnswerType?
    
    public init(question text: String, type t: QuestionAnswerType? = nil) {
        self.questionText = text
        self.type = t
    }
}

public struct Answer {
    
    public var options: [String]?
    public var correctAnswer: String?
    public var selectedAnswer: String?
    internal var score: Int?
    
    public init (options optionList: [String], correctAnswer correct: String) {
        self.options = optionList
        self.correctAnswer = correct
    }
    
    var isCorrect: Bool? {
        guard let selected = selectedAnswer else { return nil }
        
        guard let correct = correctAnswer else { return nil }
        
        if correct == selected {
            return true
        }
        
        return false
    }
    
    public func getScore() -> Int? {
        guard let flag = isCorrect else { return nil }
        if flag == true {
            return 100
        }
        return 0
    }
}
