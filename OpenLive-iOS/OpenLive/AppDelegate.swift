//
//  AppDelegate.swift
//  OpenLive
//
//  Created by GongYuhua on 6/25/16.
//  Copyright © 2016 Agora. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        TuSDKManager.shared().initSdk(withAppKey: "304802f7e592c585-04-ewdjn1")
        TUCCore.setLogLevel(.DEBUG)
        TUPEngine.`init`(nil)
        print("TuSDK版本号\(lsqPulseSDKVersion)")
        
        return true
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        TUPEngine.terminate()
    }
}
