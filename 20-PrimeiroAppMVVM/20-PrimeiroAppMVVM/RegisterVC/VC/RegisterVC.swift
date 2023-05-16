//
//  ViewController.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 4/25/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    private var registerScreen: RegisterScreen?
    private var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
        registerScreen?.configTextFieldDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }

}

extension RegisterVC: RegisterScreenProtocol {
    func tappedRegisterButton () {
        viewModel.registerUser(email: registerScreen?.emailTextField.text ?? "", password: registerScreen?.passwordTextField.text ?? "")
    }
}

extension RegisterVC: RegisterViewModelProtocol {
    func successRegister() {
        let vc: HomeVC = HomeVC()
          
        vc.modalPresentationStyle = .fullScreen
          
        present(vc, animated: true)
    }
    
    func errorRegister(errorMessage: String) {
        Alert(controller: self).showAlertInformation(title: "Ops", message: errorMessage)
    }
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = registerScreen?.emailTextField.text ?? ""
        let passwordTextField: String = registerScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !passwordTextField.isEmpty {
            registerScreen?.registerButton.isEnabled = true
            registerScreen?.registerButton.backgroundColor = .blue
        } else {
            registerScreen?.registerButton.isEnabled = false
            registerScreen?.registerButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
