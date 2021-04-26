//
//  main.swift
//  AppLaunch
//
//  Created by Andreas Lüdemann on 19/04/2021.
//

import UIKit

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv,
                   nil, NSStringFromClass(appDelegateClass))
