//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

struct Question {
    var text : String?
    var answer : String?
}

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var qnDisplay = 0
    
    let quiz = [
        
        Question.init(text: "Four + Two is equal to Six", answer: "True"),
        Question.init(text: "Five - Three is greater than One", answer: "True"),
        Question.init(text: "Three + Eight is less than ten", answer: "False")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
            updateUI()
        
        
    }

    
    @IBAction func onClickAnswer(_ sender: UIButton) {
        
        let userAns = sender.currentTitle
        let actualAns = quiz[qnDisplay].answer
        
        if userAns == actualAns
        {
            print("right")
        }else
        {
            print("wrong"   )
        }
        
        if qnDisplay < quiz.count-1 {
            qnDisplay += 1
        }else{
            qnDisplay = 0
            print("All Done")
        }
        
        
        updateUI()
        
    }
    
    func updateUI()  {
        questionLabel.text = quiz[qnDisplay].text   
       
    }
    
}

