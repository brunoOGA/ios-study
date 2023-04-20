//
//  ViewController.swift
//  17-PrimeiroProjetoViewCode
//
//  Created by Bruno Arruda on 4/20/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

