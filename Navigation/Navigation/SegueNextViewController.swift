//
//  SegueNextViewController.swift
//  Navigation
//
//  Created by Andreas Lüdemann on 26/04/2021.
//

import UIKit

class SegueNextViewController: UIViewController {
    var labeltext: String?
    @IBOutlet private(set) var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labeltext
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
