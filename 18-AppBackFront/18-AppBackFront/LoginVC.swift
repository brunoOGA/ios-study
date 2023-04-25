//
//  ViewController.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 4/25/23.
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

