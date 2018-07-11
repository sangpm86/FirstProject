//
//  AppDelegate.swift
//  FirstProject
//
//  Created by Nam on 2018/07/03.
//  Copyright © 2018 Sang Pm. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var view01:UIView!
    var view02:UIView!
    var lbResult:UILabel!
    var i = 0

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //initView()
        //intCalulator()

//        window?.rootViewController = UINavigationController(rootViewController: View01ViewController())
//        window?.rootViewController = CalculatorViewController()
//        window?.rootViewController = FriendViewController()
        window?.rootViewController = ButtonDelegateControllerViewController()
        return true
    }
    
//    func intCalulator(){
//        var x = 10
//
//        lbResult = UILabel(frame: CGRect(x: 0, y: 0, width: window!.frame.width, height: 100))
//        lbResult.backgroundColor = .white
//        lbResult.text = ""
//        lbResult.textAlignment = .right
//        lbResult.font = UIFont(name: lbResult.font.fontName, size: 50)
//        window?.addSubview(lbResult)
//
//        var y = 110
//        let with = (Int)(window!.frame.width - 50)/4
//        let listNumber:Array = [
//            "7","8","9","+",
//            "4","5","6","-",
//            "1","2","3","%",
//            "0","=",nil,"*"
//        ]
//
//        window?.backgroundColor = UIColor.yellow
//        for index in 0...listNumber.count - 1 {
//            if listNumber[index] != nil {
//                let tempW =  listNumber[index] == "=" ? 2*with + 10 : with
//                let bt1 = UIButton()
//                bt1.backgroundColor = UIColor.blue
//                bt1.frame = CGRect(x: x, y: y, width: tempW, height: with)
//                bt1.setTitle(listNumber[index], for: .normal)
//                bt1.addTarget(self, action: #selector(senButton(sender: )), for: .touchUpInside)
//                window?.addSubview(bt1)
//            }
//            x += (with + 10)
//            if (index + 1) % 4 == 0 {
//                x = 10
//                y += (with + 10)
//
//            }
//        }
//
//    }
//
//    @objc func senButton(sender: UIButton){
//
//        let string = sender.title(for: .normal)!
//        if Int(string) != nil {
//            lbResult.text = lbResult.text! + sender.title(for: .normal)!
//        }
//    }
//
//    func initView(){
//        view01 = UIView(frame: window!.frame)
//        view01.backgroundColor = .green
//
//        let helloworld = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
//        helloworld.backgroundColor = .red
//        helloworld.text = "Hello Sang"
//        helloworld.textColor = .white
//        helloworld.textAlignment = .center
//        helloworld.frame.origin.x = (window!.frame.width - helloworld.frame.width)/2
//        view01.addSubview(helloworld)
//
//
//        let uibutton = UIButton()
//        uibutton.frame = helloworld.frame
//        uibutton.frame.origin.y += 30
//        uibutton.backgroundColor = .yellow
//        uibutton.addTarget(self, action: #selector(bt1Add), for: .touchUpInside)
//        uibutton.setTitle("Title 01", for: .normal)
//        view01.addSubview(uibutton)
//
//        view02 = UIView(frame: window!.frame)
//        view02.backgroundColor = .white
//
//        let label01 = UILabel(frame: helloworld.frame)
//        label01.frame.origin.y += 100
//        label01.text = "Man hinh so 02"
//        label01.textColor = .red
//        view02.addSubview(label01)
//
//        let button02 = UIButton(frame: label01.frame)
//        button02.frame.origin.y += 20
//        button02.backgroundColor = .blue
//        button02.addTarget(self, action: #selector(bt2add), for: .touchUpInside)
//        button02.setTitle("button 02", for: .normal)
//        view02.addSubview(button02)
//
//        window?.addSubview(view01)
//
//    }
//
//    @objc func bt2add(){
//        view02.removeFromSuperview()
//        window?.addSubview(view01)
//    }
//
//    @objc func bt1Add(){
//        view01.removeFromSuperview()
//        window?.addSubview(view02)
//    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

