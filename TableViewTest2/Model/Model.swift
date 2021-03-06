//
//  Model.swift
//  TableViewTest2
//  Created by κΉμ¬ν on 2021/12/31.
//

import Foundation

class Memo {
    var content: String
    var insertDate: Date
    
    init(content: String) {
        self.content = content
        insertDate = Date()
    }
    
    static var dummyMemoList = [
        Memo(content: "Lorem Ipsum"),
        Memo(content: "Subscribe π"),
        Memo(content: "Lorem"),
        Memo(content: "Subscribe β€οΈ"),
        Memo(content: "Lom"),
        Memo(content: "Subscribe π β€οΈ")
    ]
}
