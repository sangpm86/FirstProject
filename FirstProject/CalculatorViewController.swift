//
//  CalculatorViewController.swift
//  FirstProject
//
//  Created by Nam on 2018/07/05.
//  Copyright © 2018 Sang Pm. All rights reserved.
//
extension String {
    var numberValue:NSNumber? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.number(from: self)
    }
}


import UIKit

class CalculatorViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
    }

    var label01:UILabel = UILabel()
    var firstNum:String = "0"
    var secondNum:String = "0"
    var myOperator:String = "x"
    
    func addView() {
        let screenSize = self.view.frame.size.width

        label01 = UILabel(frame: CGRect(x: 10, y: 10, width: screenSize - 20, height: 80))
        //label01.backgroundColor = .white
        label01.text = "0"
        label01.textAlignment = .right
        label01.font = UIFont(name: label01.font.fontName, size: 50)
        label01.layer.cornerRadius = 10
        label01.textColor = .white
        self.view.addSubview(label01)
        
        let listNumber = [
            ["AC","+/-","%","/"],
            ["7","8","9","x"],
            ["4","5","6","-"],
            ["1","2","3","+"],
            ["0",nil,".","="]
        ]
        
        let with = (Int)(screenSize - 50) / 4
        var btTag = 1

        for index in 0...listNumber.count - 1 {
            let y = (index * (with + 10)) + 80 + 20
            for index2 in 0...listNumber[index].count - 1 {
                let x = index2 * (with + 10) + 10
                if listNumber[index][index2] != nil{
                    print(listNumber[index][index2]!.description)
                    
                    let tempW =  listNumber[index][index2] == "0" ? 2*with + 10 : with
                    let bt1 = UIButton()
                    bt1.backgroundColor = UIColor.blue
                    bt1.tag = btTag
                    bt1.frame = CGRect(x: x, y: y, width: tempW, height: with)
                    bt1.setTitle(listNumber[index][index2], for: .normal)
                    bt1.addTarget(self, action: #selector(senButton(sender: )), for: .touchUpInside)
                    bt1.layer.cornerRadius = CGFloat(with / 2)
                    
                    self.view.addSubview(bt1)
                    
                    btTag = btTag + 1
                }
            }

        }
    }
    
    @objc func senButton(sender: UIButton) {
        let sendval:String = sender.title(for: .normal)!;
        let acTitle:String = sender.tag == 1 ? "AC" : "C"
        (self.view.viewWithTag(1) as! UIButton).setTitle(acTitle, for: .normal)

        let lbTxt:String = label01.text!
        if Int(sendval) != nil {
            label01.text = (lbTxt == "0") ? sendval : lbTxt + sendval
        } else if sendval == "." && lbTxt.range(of: ".") == nil {
            label01.text = lbTxt + "."
        } else if isOperation(input: sendval) {
//            if myOperator == "" {
//                firstNum = lbTxt
//            } else {
//                secondNum = lbTxt
//                label01.text = getResult(first: Double(firstNum.description)!, second: Double(secondNum.description)!, oper: sendval.description)
//            }
            
            myOperator = sendval
            sender.backgroundColor = .red
            
            
        } else if sendval == "C" {
          label01.text = "0"
        } else if sendval == "AC" {
            firstNum = "0"
            myOperator = ""
            secondNum = "0"
        }
        
        
    }
    
    
    func getResult(first:Double, second:Double, oper:String) ->String{

        var result : [String:Double] = [
            "+" : first + second,
            "-" : first - second,
            "x" : first * second,
            "/" : second == 0 ? 0 : first/second
        ]
        
        return result[oper]!.description
    }
    
    func isOperation(input: String)  -> Bool{
        return "+-x/".range(of: input) != nil
    }
}



