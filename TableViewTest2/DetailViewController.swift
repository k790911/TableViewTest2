//
//  DetailViewController.swift
//  TableViewTest2
//
//  Created by 김재훈 on 2022/01/02.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var memoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Save(_ sender: UIBarButtonItem) {
        
        guard let memo = memoTextView.text, memo.count > 0 else {
            alert(message: "메모를 입력하세요.")
            return
        }
        
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        
        for i in 0 ... Memo.dummyMemoList.count - 1 {
            print(Memo.dummyMemoList[i].content)
        }
        
        // notification 설정 1/4
        NotificationCenter.default.post(name: DetailViewController.newMemoDidInsert, object: nil)
        
        dismiss(animated: true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailViewController {
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}
