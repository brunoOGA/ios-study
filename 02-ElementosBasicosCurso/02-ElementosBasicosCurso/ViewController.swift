//
//  ViewController.swift
//  02-ElementosBasicosCurso
//
//  Created by Bruno Arruda on 3/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bemVindoView: UIView!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoView.backgroundColor = UIColor.brown;
    }


    @IBAction func loginButton(_ sender: Any) {
        bemVindoView.backgroundColor = UIColor.green
    }
}

