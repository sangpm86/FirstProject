//
//  UIViewExtension.swift
//  FirstProject
//
//  Created by Nam on 7/11/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

extension UIView{
    func right() -> CGFloat{
        return self.frame.origin.x + self.frame.size.width
    }
    
    func bottom() ->CGFloat{
        return self.frame.origin.y + self.frame.size.height
    }
    
    func updateCenter(screenWith:CGFloat){
        self.frame.origin.x = (screenWith - self.frame.size.width)/2
    }
    
    func updateOriginY(parent:UIView, distance:CGFloat) {
        self.frame.origin.y = parent.bottom() + distance
    }
    
    func setCssLogin(){
        self.backgroundColor = .yellow
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.blue.cgColor
        self.frame.size.height = 50
    }
}
