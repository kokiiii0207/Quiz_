//
//  ResultViewController.swift
//  Quiz
//
//  Created by ohtatomotaka on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "\(correctAnswer)"
        
        if correctAnswer <= 3{
            resultLabel.text = "あ〜..もうちょっと僕と話しましょう！"
        }else if correctAnswer <= 5{
            resultLabel.text = "キムラコウキに対する理解がすばらしい"
        }else if correctAnswer <= 6{
            resultLabel.text = "運命ですね！"
        }
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
