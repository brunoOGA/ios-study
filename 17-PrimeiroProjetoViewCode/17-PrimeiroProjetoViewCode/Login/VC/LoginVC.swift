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
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    }

}

extension LoginVC: LoginScreenProtocol {
    
    func tappedLoginButton() {
        print("chamou")
    }

}

extension LoginVC: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let emailText: String = loginScreen?.emailTextField.text ??  ""
        let passwordText: String = loginScreen?.passwordTextField.text ?? ""
        
        if !emailText.isEmpty && !passwordText.isEmpty {
            print("Botão habilitado")
            loginScreen?.loginButton.backgroundColor = .blue
            loginScreen?.loginButton.isEnabled = true
        } else {
            print("Botão desabilitado")
            loginScreen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.4)
            loginScreen?.loginButton.isEnabled = false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        return false
    }
}
