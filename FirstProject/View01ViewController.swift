//
//  View01ViewController.swift
//  FirstProject
//
//  Created by Nam on 2018/07/05.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class View01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addNavi()
        addView()
        // Do any additional setup after loading the view.
    }
    
    func addView(){
        self.view.backgroundColor = .red
        
        let label01 = UILabel(frame: CGRect(x: 10, y: 100, width: self.view.frame.width - 20 , height: 30))
        label01.text = "Chao em man hinh so 1"
        label01.textColor = UIColor.white
        label01.backgroundColor = .white
        
        self.view.addSubview(label01)
        
        let button01 = UIButton(frame: label01.frame)
        button01.frame.origin.y = button01.frame.origin.y + 40
        button01.setTitle("Submit 01", for: .normal)
        button01.titleLabel?.textColor = .black
        //button01.backgroundColor = .white
        button01.addTarget(self, action: #selector(clickButton01), for: .touchUpInside)

        self.view.addSubview(button01)
    }
    
    @objc func clickButton01(){
        print("button 01")
        self.navigationController?.pushViewController(View02ViewController(), animated: true)
    }
    
    func addNavi() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Menu", style: .done, target: self, action: #selector(addMenu))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(addDone))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Screen 01"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.title = "Back"
    }
    
    @objc func addDone(){
        exit(1)
    }

    @objc func addMenu(){
        
    }
  

}
