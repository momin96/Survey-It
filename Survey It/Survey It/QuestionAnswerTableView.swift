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
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
        
    }
    
    class func create() -> QuestionAnswerTableView {
    
        let bundle = Bundle(for: QuestionAnswerTableView.self)
        let list = UINib(nibName: "QuestionAnswerTableView", bundle: bundle).instantiate(withOwner: nil, options: nil)
        print(list)
        
        return list.first as! QuestionAnswerTableView
    }
}

extension QuestionAnswerTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guar
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}


