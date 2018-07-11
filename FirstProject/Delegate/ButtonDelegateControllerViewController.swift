//
//  ButtonDelegateControllerViewController.swift
//  FirstProject
//
//  Created by Nam on 7/10/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class ButtonDelegateControllerViewController: UIViewController, UITextFieldDelegate {
    var lbText:UILabel!
    var text01:UITextField!
    var text02:UITextField!
    var button01:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "B0010980_main.jpg")!)
    }
    
    private func addView(){
        
        let screenWidth = self.view.frame.width
        let y_distance = CGFloat(10)
        
        lbText = UILabel(frame: CGRect(x: 0, y: 150, width: screenWidth, height: 50))
        lbText.text = "Loi ne e"
        lbText.textColor = .red
        lbText.textAlignment = .center
        self.view.addSubview(lbText)
        
        text01 = UITextField(frame: self.view.frame)
        text01.updateOriginY(parent: lbText, distance: y_distance)
        text01.setCssLogin()
        text01.tag = 1
        text01.delegate = self
        self.view.addSubview(text01)
        
        text02 = UITextField(frame: self.view.frame)
        text02.setCssLogin()
        text02.isSecureTextEntry = true
        text02.tag = 2
        text02.delegate = self
        text02.updateOriginY(parent: text01, distance: y_distance)
        self.view.addSubview(text02)
        
        button01 = UIButton(frame: CGRect(x: 10, y: 20, width: 200, height: 50))
        button01.setTitle("Submit", for: .normal)
        button01.setTitleColor(.black, for: .normal)
        
        button01.setCssLogin()
        button01.updateCenter(screenWith: screenWidth)
        button01.updateOriginY(parent: text02, distance: y_distance)
        button01.tag = 3
        button01.addTarget(self, action: #selector(login), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button01)
        
    }
    
    @objc func login() {
        if (text01.text?.caseInsensitiveCompare("sangpm") != ComparisonResult.orderedSame) {
            lbText.text = "User khong dung may"
            return
        }

       if (text02.text?.caseInsensitiveCompare("sangpm") != ComparisonResult.orderedSame) {
            text02.text = ""
            lbText.text = "Mat khau khong dung may"
            return
        }
        
        text01.text = ""
        text02.text = ""
        lbText.text = "May dang nhap dung"
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            login()
        }

        return true
    }

}
