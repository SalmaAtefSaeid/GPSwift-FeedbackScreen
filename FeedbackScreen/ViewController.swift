//
//  ViewController.swift
//  FeedbackScreen
//
//  Created by Salma Atef Saeid on 6/3/19.
//  Copyright © 2019 Salma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var feedbackStack: UIStackView!
    @IBOutlet weak var commentTxtView: UITextView!
    var feedbackSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commentTxtView.delegate = self
        commentTxtView.text = "Tell us your comment"
        commentTxtView.textColor = UIColor.darkGray
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.darkGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Tell us your comment"
            textView.textColor = UIColor.lightGray
        }
    }
    
    @IBAction func goodFeedbackBtn(_ sender: UIButton) {
        if sender.tintColor == UIColor.black{
            deselectAllButtons()
            feedbackSelected = true
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 100)
            sender.tintColor = UIColor.white
        }else{
            feedbackSelected = false
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 60)
            sender.tintColor = UIColor.black
        }
    }
    @IBAction func badFeedbackBtn(_ sender: UIButton) {
        if sender.tintColor == UIColor.black{
            deselectAllButtons()
            feedbackSelected = true
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 100)
            sender.tintColor = UIColor.white
        }else{
            feedbackSelected = false
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 60)
            sender.tintColor = UIColor.black
        }
    }
    
    @IBAction func neutralFeedbackBtn(_ sender: UIButton) {
        if sender.tintColor == UIColor.black{
            deselectAllButtons()
            feedbackSelected = true
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 100)
            sender.tintColor = UIColor.white
        }else{
            feedbackSelected = false
            sender.titleLabel?.font = UIFont(name: (sender.titleLabel?.font.fontName)!, size: 60)
            sender.tintColor = UIColor.black
        }
    }
    @IBAction func rateBtn(_ sender: UIButton) {
    }
    func deselectAllButtons(){
        for subView in feedbackStack.subviews
        {
            if let button = subView as? UIButton{
                feedbackSelected = false
                button.titleLabel?.font = UIFont(name: (button.titleLabel?.font.fontName)!, size: 60)
                button.tintColor = UIColor.black
            }
        }
    }
}

