//
//  ViewController.swift
//  06-UiSliderCurso
//
//  Created by Bruno Arruda on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slider.minimumValue = 0
        slider.value = 0
        slider.maximumValue = 20
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(sender.value)
    }
    
}

