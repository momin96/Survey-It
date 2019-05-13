//
//  QuestionAnswerCells.swift
//  Survey It
//
//  Created by Nasir Ahmed Momin on 13/05/19.
//  Copyright © 2019 Nasir Ahmed Momin. All rights reserved.
//

import Foundation

internal let questionCellId = "QuestionCellId"
internal let answerCellId = "AnswerCellId"


class QuestionCell: UITableViewCell {
    
    deinit {
        print("deinit QuestionCell")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib QuestionCell")
    }
    
}

class AnswerCell: UITableViewCell {
    
    deinit {
        print("deinit AnswerCell")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib AnswerCell")
    }
    
}
