//
//  ViewController.swift
//  05-UISwitchCurso
//
//  Created by Bruno Arruda on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.onTintColor = .red
        
    }

    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        stateSwitch.isOn = sender.isOn
    }
}

