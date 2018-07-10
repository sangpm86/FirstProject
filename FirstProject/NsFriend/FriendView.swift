//
//  FriendView.swift
//  FirstProject
//
//  Created by Nam on 7/10/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

extension UIView{
    func right() -> CGFloat{
        return self.frame.origin.x + self.frame.size.width
    }
    
    func bottm() ->CGFloat{
        return self.frame.origin.y + self.frame.size.height
    }
}

class FriendView: UIView {
    var img:UIImageView!
    var lb:UILabel!
    var lbdesc:UILabel!

    init(i_width:Int, fri:Friend) {
        super.init(frame:CGRect(x: 0, y: 0, width: i_width, height: 20))
        self.backgroundColor = .yellow
        
        self.loadView(i_width: i_width)
        self.fillData(fri: fri)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadView(i_width:Int){
        
        img = UIImageView(frame: CGRect(x: 10, y: 10, width: 100, height: 100))
        img.backgroundColor = .red
        self.frame.size.height = img.frame.size.height + 20
        self.addSubview(img)

        lb = UILabel(frame:CGRect(x: Int(img.right()) + 10, y: 10, width: i_width - 130, height: 30))
        lb.backgroundColor = .red
        lb.textColor = .white
        self.addSubview(lb)
        
        
        lbdesc = UILabel(frame: CGRect(x: lb.frame.origin.x, y: lb.bottm() + 10 , width: lb.frame.size.width , height: img.frame.size.height - lb.frame.size.height - 10 ))
        lbdesc.backgroundColor = .red
        lbdesc.textColor = .white
        lbdesc.numberOfLines = 3
        lbdesc.font = lbdesc.font.withSize(15)
        self.addSubview(lbdesc)
        
    }
    
    public func fillData(fri:Friend){
        print(fri.printDesc())
        if let val = fri.image {
            self.img.image = UIImage(named: val)
        }
        self.lb.text = fri.title
        self.lbdesc.text = fri.desc
    }
}
