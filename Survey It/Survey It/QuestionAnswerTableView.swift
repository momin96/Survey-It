//
//  QuestionAnswerTableView.swift
//  Survey It
//
//  Created by Nasir Ahmed Momin on 13/05/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import Foundation

class QuestionAnswerTableView: UITableView {
    
    internal var questionAnswer: QuestionAnswers?
    
    internal var qNib: UINib {
        let bundle = Bundle(for: QuestionAnswerTableView.self)
        return UINib(nibName: "QuestionCell", bundle: bundle)
    }
    
    internal var aNib: UINib {
        let bundle = Bundle(for: QuestionAnswerTableView.self)
        return UINib(nibName: "AnswerCell", bundle: bundle)
    }
    
    // MARK:- Overridable functions
    deinit {
        print("deinit QuestionAnswerTableView")
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        register(qNib, forCellReuseIdentifier: questionCellId)
        register(aNib, forCellReuseIdentifier: answerCellId)
        
        dataSource = self
    }
    
    // MARK:- Public functions
    class func create() -> QuestionAnswerTableView {
    
        let bundle = Bundle(for: QuestionAnswerTableView.self)
        
        let list = UINib(nibName: "QuestionAnswerTableView", bundle: bundle).instantiate(withOwner: nil, options: nil)
        
        return list.first as! QuestionAnswerTableView
    }
}

extension QuestionAnswerTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let _ = questionAnswer, let _ = questionAnswer?.question, let a = questionAnswer?.answers else { return 0 }
        
        if a.isEmpty {
            return 0
        }

        return a.count + 1  // +1 for question cell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            return getQuestionCell(tableView)
        }
        return getAnwerCell(tableView)
    }
    
    private func getQuestionCell (_ tableView: UITableView) -> QuestionCell{
        
//        let list = qNib.instantiate(withOwner: nil, options: nil)
//
//        var cell: QuestionCell? = nil
//
//        for thisClass in list {
//            if thisClass is QuestionCell {
//                cell = thisClass as? QuestionCell
//                break
//            }
//        }
//
//        return cell!
        
        return tableView.dequeueReusableCell(withIdentifier: questionCellId) as! QuestionCell
    }
    
    private func getAnwerCell (_ tableView: UITableView) -> AnswerCell{
        
//        let list = aNib.instantiate(withOwner: nil, options: nil)
//
//        var cell: AnswerCell? = nil
//
//        for thisClass in list {
//            if thisClass is AnswerCell {
//                cell = thisClass as? AnswerCell
//                break
//            }
//        }
//        return cell!
        
        return tableView.dequeueReusableCell(withIdentifier: answerCellId) as! AnswerCell
    }
}


