//
//  Analytics.swift
//  HardDependencies
//
//  Created by Andreas Lüdemann on 21/04/2021.
//

import Foundation

class Analytics {
    static let shared = Analytics()
    
    func track(event: String) {
        print(">> " + event)
        
        if self !== Analytics.shared {
            print(">> ...Not the Analytics singleton")
        }
    }
}
