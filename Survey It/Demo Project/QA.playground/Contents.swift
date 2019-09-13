import Foundation

public enum QuestionAnswerType {
    case A
}

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

var q1 = Question(question: "This is question 1 ?")
var a1 = Answer(options: ["a1", "b1", "c1", "d1", "e1"], correctAnswer: "e1")
var qa1 = QuestionAnswers(question: q1, answers: a1)

var q2 = Question(question: "This is question 2 ?")
var a2 = Answer(options: ["a2", "b2", "c2", "d2", "e2"], correctAnswer: "a2")
var qa2 = QuestionAnswers(question: q2, answers: a2)

var q3 = Question(question: "This is question 3 ?")
var a3 = Answer(options: ["a3", "b3", "c3", "d3", "e3"], correctAnswer: "d3")
var qa3 = QuestionAnswers(question: q3, answers: a3)

var q4 = Question(question: "This is question 4 ?")
var a4 = Answer(options: ["a4", "b4", "c4", "d4", "e4"], correctAnswer: "b4")
var qa4 = QuestionAnswers(question: q4, answers: a4)

var q5 = Question(question: "This is question 5 ?")
var a5 = Answer(options: ["a5", "b5", "c5", "d5", "e5"], correctAnswer: "b5")
var qa5 = QuestionAnswers(question: q5, answers: a5)


let config = SurveyConfig([qa1, qa2, qa3, qa4, qa5])


func action1() {
    qa1.answer?.selectedAnswer = "e1"
    qa2.answer?.selectedAnswer = "c2"
    qa3.answer?.selectedAnswer = "b2"
    qa4.answer?.selectedAnswer = "d4"
    qa5.answer?.selectedAnswer = "b5"
    
    print("\(qa1.answer?.isCorrect) \(qa1.answer?.getScore())")
    print("\(qa2.answer?.isCorrect) \(qa2.answer?.getScore())")
    print("\(qa3.answer?.isCorrect) \(qa3.answer?.getScore())")
    print("\(qa4.answer?.isCorrect) \(qa4.answer?.getScore())")
    print("\(qa5.answer?.isCorrect) \(qa5.answer?.getScore())")

}

action1()
