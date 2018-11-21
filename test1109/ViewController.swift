//
//  ViewController.swift
//  test1109
//
//  Created by s20171105406 on 2018/11/9.
//  Copyright © 2018 s20171105406. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result_1: UITextField!
    
    @IBOutlet weak var result_2: UITextField!
    
    @IBOutlet weak var result: UILabel!

    var number = 0 //判断加减乘除
    var judge = 0 //判断小数点是否出现过，决定输出数字的位数
    var add = 0
    var re = 0 //判断result.text前是否存在符号
    //运算的核心在于字符串与double型的转换，两字符串相加如“1”+“2”得到“12”而double1+double2得到3.0
    
    //按下一个bullon，如果是result中的第一个，则直接显示a该数字，如果不是，则在result.text 字符串的末尾+“number”，为判断该数字是否为字符串中的第一个数字，可以添加名为re的int型变量作为判断的条件
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
        }else{
            result.text = result.text! + "1"
        }
    }
    
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
        }else{
            result.text = result.text! + "2"
        }
    }
    
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
        }else{
            result.text = result.text! + "3"
        }
    }
    
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
        }else{
            result.text = result.text! + "4"
        }
    }
    
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
        }else{
            result.text = result.text! + "5"
        }
    }
    
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
        }else{
            result.text = result.text! + "6"
        }
    }
    
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
        }else{
            result.text = result.text! + "7"
        }
    }
    
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
        }else{
            result.text = result.text! + "8"
        }
    }
    
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
        }else{
            result.text = result.text! + "9"
        }
    }
    
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }else{
            result.text = result.text! + "0"
        }
    }
    //点击AC则清空字符串result.text
    @IBAction func bollunAC(_ sender: Any) {
        result.text = " "
        re = 0
    }
    //首先，将result.text字符串转换为double型，将其赋值给result_1.text，然后清空字符串，当用户在此输入时，result.text则可在点击=时赋值给result_2.text，然后double（result_1.text!）!+double（result_2.text!）!获得最终的结果，number为运算符代号，方便之后判断运算符号用
    @IBAction func bullonAdd(_ sender: Any) {
        //要处理连续运算问题，就需要判断运算符出现的次数，添加变量add=0，如果运算符出现一次，则add=1，将String（1+2）的结果交给result_1.text，String（3）的结果交给result_2.text，再将两数转换为double型相加
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a + b
            result_1.text=String(c)
            result.text=""
            number = 2
            re = 1
        }else{
            //然而，在result.text为空字符串时，直接按+-*/中的任意一个g会导致程序闪退，因此，要判断字符串是否为空，如果为空，则将其变为“0”
            if result.text==""{
                result.text = "0"
            }else{
                
                let x = Double(result.text!)!
                result_1.text=String(x)
                result.text = ""
                number = 2
                re = 0
                
            }
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a - b
            result_1.text = String(c)
            result.text = ""
            number = 1
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
                
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 1
                re = 1
            }
        }
    }
    
    @IBAction func ride(_ sender: Any) {
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a * b
            result_1.text = String(c)
            result.text = ""
            number = 3
            re = 1
            
            
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let x = Double(result.text!)!
                result_1.text = String(x)
                result.text = ""
                number = 3
                re = 0
                add = 1
                
            }
            
        }
    }
    
    
    @IBAction func division(_ sender: Any) {
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(result.text!)!
            let c = a/b
            result_1.text = String(c)
            result.text = ""
            number = 4
            re = 1
        }else{
            if result.text == ""{
                result.text = "0"
            }else{
                let y = Double(result.text!)!
                result_1.text = String(y)
                result.text = ""
                number = 4
                re = 0
                add = 1
                
            }
        }
    }
    //在点击四则运算符时，result.text的内容已被存放进result_1.text中，（如a+b中的a）令x=Double（result_1.text!）!，在按下=前，result.text中的数（如a+b中的b）则要被存放在result_2.text中，令c=（result.text！as NSString).doubleValue（强调l类型转换方法2），将字符串转换为double型    令运算的结果=d，接下来根据number的值来处理运算（如number==1则d=a-b，number==2则d=a+b）
    @IBAction func equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(result_1.text!)!
        c = (result.text!as NSString).doubleValue
        if number == 1{
            d = x - c
        }else if number == 2{
            d = x + c
        }else if number == 3{
            d = x * c
        }else if number == 4{
            d = x / (c)
        }else{
            d = 1000
        }
        result_2.text = String(c)
        //在这里直接在result中显示String（d）就可以显示结果了，然而，为了美观，1+1最好=2而非2.0，因此judge在此派上用场，如果judge=1则证明出现过“.”则直接输出该浮点数，若judge=0则舍弃小数部分
        if judge == 1{
            result.text = String(format:"%f",d)
        }else{
            result.text = String(format:"%.0f",d)
        }
        re = 1
        judge = 0
        add = 0
    }
    
    @IBAction func doc(_ sender: Any) {
        result.text = result.text! + "."
        judge = 1
    }
    // %，将当前的*0.01
    @IBAction func percent(_ sender: Any) {
        let count = Double(result.text!)!
        let count2 = count * 0.01
        result.text = String(count2)
        re = 0
    }
    // +/-用来改变resul.text中内容的正负，只需定义一个新字符串，并让两字符串的内容交换
    @IBAction func change(_ sender: Any) {
        let count = Double(result_1.text!)!
        let count2 = -count
        result.text = String(count2)
        re = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

