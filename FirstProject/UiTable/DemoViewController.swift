//
//  DemoViewController.swift
//  FirstProject
//
//  Created by Nam on 7/12/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var table:UITableView!
    var users:NSMutableArray = []
    
    private func floadData(){
        for index in 1...20 {
            var friend01 = Friend(img: "pexels-photo-658687.jpeg", title: "Test Label  \(index.description)", desc: "If this view is being reconstituted from a Nib then your custom initializer will not be called, and instead the")
            users.add(friend01)
        
            friend01 = Friend(img: "index.jpg", title: "The gioi to that to  \(index.description)", desc: "The gioi to that to . The gioi to that to.The gioi to that to.The gioi to that to")
            users.add(friend01)
            
            friend01 = Friend(img: "images.jpg", title: "Giay phut chia xa  \(index.description)", desc: "Giay phut chia xa. Giay phut chia xa. Giay phut chia xa. ")
            users.add(friend01)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTable()
        floadData()
    }

    func loadTable(){
        table = UITableView(frame: self.view.frame)
        table.delegate = self
        table.dataSource = self
        self.view.addSubview(table)
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        var fCell = table.dequeueReusableCell(withIdentifier: "myCell") as? FriendTbCellTableViewCell
        if fCell == nil {
            fCell = FriendTbCellTableViewCell()
        }
        fCell!.fillData(fri: users[indexPath.row] as! Friend)
        
        return fCell!
    }
}
