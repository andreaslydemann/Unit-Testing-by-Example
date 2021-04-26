//
//  ViewController.swift
//  ButtonTap
//
//  Created by Andreas Lüdemann on 23/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private(set) var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction private func buttonTap() {
        print(">> Button was tapped")
    }
}

