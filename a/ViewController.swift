//
//  ViewController.swift
//  a
//
//  Created by Daffa Yagrariksa on 26/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navToTestView(_ sender: UIButton) {
        
        performSegue(withIdentifier: "showTestView", sender: sender)
        print("Triggered")
        
    }
}

