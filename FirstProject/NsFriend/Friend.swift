//
//  Friend.swift
//  FirstProject
//
//  Created by Nam on 7/10/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class Friend: NSObject {
    var image:String!
    var title:String!
    var desc:String!
    
    func printDesc() -> String {
        return "Img \(self.image) title: \(self.title) desc: \(self.desc)"
    }
    
    init(img:String?, title:String?, desc:String?){
        self.image = img?.description
        self.title = title?.description
        self.desc = desc?.description
    }
}
