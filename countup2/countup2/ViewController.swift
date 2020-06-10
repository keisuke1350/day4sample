//
//  ViewController.swift
//  countup2
//
//  Created by 葛西　佳祐 on 2020/06/06.
//  Copyright © 2020 葛西　佳祐. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var textCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 初期値の設定
        textView.text = ""
        textCountLabel.text = "0"
        
        textView.delegate = self
    }
    
    func textViewDidChange( _ textView: UITextView) {
        print("textViewDidChangeが呼ばれたよ")
        let count: Int = textView.text.count
        textCountLabel.text = "\(count)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBaganが呼ばれたよ")
        textView.resignFirstResponder()
    }
//    func textViewDidEndEditing(_ textView: UITextView) {
//        print("textViewDidEndEditingが呼ばれたよ🐢")
//    }
//    func textViewDidBeginEditing(_ textView: UITextView) {
//        print("textViewDidBeginEditingが呼ばれたよ🐢")
//    }
//    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
//        print("textViewShouldEndEditingが呼ばれたよ🐢")
//        return true
//    }
//    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
//        print("textViewShouldBeginEditingが呼ばれたよ🐢")
//        return true
//    }
//    func textViewDidChangeSelection(_ textView: UITextView) {
//        print("textViewDidChangeSelectionが呼ばれたよ🐢")
//    }


}

