//
//  ViewController.swift
//  MVVMPractice
//
//  Created by Nelson Aquino Jr  on 4/17/22.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toTableView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTableView"{
            //let vc = segue.destination as? TableViewController
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

