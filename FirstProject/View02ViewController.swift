//
//  View02ViewController.swift
//  FirstProject
//
//  Created by Nam on 2018/07/05.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class View02ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        addNavi()
    }
    
    func addView(){
        self.view.backgroundColor = .yellow
        
        let label01 = UILabel(frame: CGRect(x: 10, y: 100, width: self.view.frame.width - 20, height: 30))
        label01.text = "Chao em man hinh so 1"
        label01.textColor = .blue
        self.view.addSubview(label01)
        
        let button01 = UIButton(frame: label01.frame)
        button01.frame.origin.y = button01.frame.origin.y + 40
        button01.setTitle("Submit 01", for: .normal)
        button01.titleLabel?.textColor = .red
        button01.titleLabel?.textAlignment = .center
        button01.addTarget(self, action: #selector(clickButton01), for: .touchUpInside)
        self.view.addSubview(button01)
    }
    
    func addNavi() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(addDone))
    }
    
    @objc func clickButton01(){
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "Screen 02"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationItem.title = "Back"
    }
    
    @objc func addDone(){
        exit(1)
    }

}
