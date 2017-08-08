//
//  AppDelegate.swift
//  weChatReadAniamtion
//
//  Created by 掌上先机 on 2017/8/8.
//  Copyright © 2017年 wangchao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        
        self.window?.makeKeyAndVisible()
        
       // self.window ?.makeKeyAndVisible()
        
        self.window?.rootViewController = ViewController()
        
        // Override point for customization after application launch.
        return true
    }


}

