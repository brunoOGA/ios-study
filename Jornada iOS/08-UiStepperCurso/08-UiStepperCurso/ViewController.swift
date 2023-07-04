//
//  ViewController.swift
//  08-UiStepperCurso
//
//  Created by Bruno Arruda on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.maximumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        stepper.stepValue = 5
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        valueLabel.text = String(Int(sender.value))
    }
}

