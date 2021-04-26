//
//  ViewController.swift
//  Alert
//
//  Created by Andreas Lüdemann on 24/04/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private(set) var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func buttonTap() {
        let alert = UIAlertController(
            title: "Do the thing?",
            message: "Let us know if you want to do the ting.",
            preferredStyle: .alert
        )
        let cancelAlert = UIAlertAction(
            title: "Cancel",
            style: .cancel) { _ in
            print(">> Cancel")
        }
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) { _ in
            print(">> OK")
        }
        alert.addAction(cancelAlert)
        alert.addAction(okAction)
        alert.preferredAction = okAction
        present(alert, animated: true)
    }
}
