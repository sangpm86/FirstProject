//
//  MainViewController.swift
//  FirstProject
//
//  Created by Nam on 7/11/18.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var leftVC: LeftViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigation()
//        initProfileViewController()
        self.view.backgroundColor = .red
       
    }
    
    private func configureNavigation() {
        self.title = "Main"
        let leftButton = UIBarButtonItem(image: UIImage(named: "test"), style: .plain, target: self, action: #selector(self.menuAction(_ :)))
//        let leftButton = UIBarButtonItem(title: "Menu", style: .plain, target: self, action: #selector(self.menuAction(_:)))
        self.navigationItem.leftBarButtonItem = leftButton
    }
    
    fileprivate func initProfileViewController() {
//        let leftVC = LeftViewController(nibName: "LeftViewController", bundle: nil)
        let leftVC = LeftViewController()
        if let frame = UIApplication.shared.windows.last?.frame {
            leftVC.resetWidth(parentWidth: frame.width)
            leftVC.shadowColor = UIColor(red: 46.0/255, green: 24.0/255, blue: 82.0/255, alpha: 0.7)
            leftVC.hasShadow = true
            UIApplication.shared.windows.last?.addSubview(leftVC.view)
        }
        self.leftVC = leftVC
    }
    
    fileprivate func addGesture() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapInSelf))
        self.view.addGestureRecognizer(gesture)
    }
    
    @objc func menuAction(_ sender: Any) {
        showLeftViewController()
    }
    
    fileprivate func showLeftViewController() {
        leftVC?.expand()
    }
    
    @objc func tapInSelf() {
        leftVC?.close()
    }
}
