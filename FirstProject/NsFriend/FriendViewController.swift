//
//  FriendViewController.swift
//  FirstProject
//
//  Created by Nam on 7/10/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {
    var users:[Friend] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        floadData()
        addView()
    }
    
    private func floadData(){
        users = [
            Friend(img: "pexels-photo-658687.jpeg", title: "Test Label", desc: "If this view is being reconstituted from a Nib then your custom initializer will not be called, and instead the"),
            Friend(img: "index.jpg", title: "The gioi to that to", desc: "The gioi to that to . The gioi to that to.The gioi to that to.The gioi to that to"),
            Friend(img: "images.jpg", title: "Giay phut chia xa", desc: "Giay phut chia xa. Giay phut chia xa. Giay phut chia xa. "),
            Friend(img: nil, title: nil, desc: nil),
        ]
    }
    
    func addView() {
        let screenWidth = Int(self.view.frame.width)
        let scroll  = UIScrollView(frame: self.view.frame)
        
        for index in 0...20{
            let fv = FriendView(i_width: screenWidth, fri: users[index % users.count])
            fv.frame.origin.y = CGFloat(index * 130 - 10)
            scroll.addSubview(fv)
        }

        scroll.contentSize = CGSize(width: self.view.frame.size.width, height: 20*130)
        self.view.addSubview(scroll)
        
    }
}
