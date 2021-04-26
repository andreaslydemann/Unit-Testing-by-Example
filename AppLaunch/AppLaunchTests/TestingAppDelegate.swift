//
//  AppDelegate.swift
//  AppLaunch
//
//  Created by Andreas Lüdemann on 19/04/2021.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(">> Launching with real app delegate")
        // Override point for customization after application launch.
        return true
    }
}

