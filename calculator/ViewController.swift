//
//  ViewController.swift
//  calculator
//
//  Created by 木村　恒輝 on 2016/02/11.
//  Copyright (c) 2016年 木村　恒輝. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var label: UILabel!
    
    var number: Int = 0
    
    var number2: Int = 0
    
    var number3: Int = 0
    
    var operation: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func select1() {
        number = number*10  + 1
        label.text = String(number)
    }
    @IBAction func select2() {
        number = number*10  + 2
        label.text = String(number)
    }
    @IBAction func select3() {
        number = number*10  + 3
        label.text = String(number)
    }
    @IBAction func select4() {
        number = number*10  + 4
        label.text = String(number)
    }
    @IBAction func select5() {
        number = number*10  + 5
        label.text = String(number)
    }
    @IBAction func select6() {
        number = number*10  + 6
        label.text = String(number)
    }
    @IBAction func select7() {
        number = number*10  + 7
        label.text = String(number)
    }
    @IBAction func select8() {
        number = number*10  + 8
        label.text = String(number)
    }
    @IBAction func select9() {
        number = number*10  + 9
        label.text = String(number)
    }
    @IBAction func plus(){
        if number3 != 0 {
            label.text = String(number3)
        }else{
          label.text = String(number)
        }
        operation = 1
        if number3 != 0 {
          number2 = number3
        }else{
        number2 = number
        }
        number = 0
    }
    @IBAction func minus(){
        if number3 != 0 {
            label.text = String(number3)
        }else{
          label.text = String(number)
        }
        operation = 2
        if number3 != 0 {
            number2 = number3
        }else{
            number2 = number
        }
        number = 0
    }
    @IBAction func multiply(){
        if number3 != 0 {
            label.text = String(number3)
        }else{
            label.text = String(number)
        }
        operation = 3
        if number3 != 0 {
            number2 = number3
        }else{
            number2 = number
        }
        number = 0
    }
    @IBAction func divide(){
        if number3 != 0 {
            label.text = String(number3)
        }else{
            label.text = String(number)
        }
        operation = 4
        if number3 != 0 {
            number2 = number3
        }else{
            number2 = number
        }
        number = 0
    }
    @IBAction func equal(){
        if operation == 1{
            number3 = number2 + number
            label.text = String(number3)
        }else if  operation == 2{
            number3 = number2 - number
            label.text = String(number3)
        }else if  operation == 3{
             number3 = number2 * number
            label.text = String(number3)
        }else if  operation == 4{
             number3 = number2 / number
            label.text = String(number3)
        }
        number = 0
    }
    @IBAction func clear(){
      number = 0
      number2 = 0
      number3 = 0
      label.text =  "0"
     }
}

