//
//  ViewController.swift
//  07-UiImageViewCurso
//
//  Created by Bruno Arruda on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoImageView.image = UIImage(named: "good-icon")
        logoImageView.contentMode = .scaleAspectFit
    }


}

