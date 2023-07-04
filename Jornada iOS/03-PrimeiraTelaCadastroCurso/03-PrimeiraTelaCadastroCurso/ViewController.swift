//
//  ViewController.swift
//  03-PrimeiraTelaCadastroCurso
//
//  Created by Bruno Arruda on 3/20/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = .emailAddress
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        registerButton.isEnabled = false
        registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .disabled)
        registerButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func tappedRegisterButton(_ sender: Any) {
        print("Botão está funcionando")
    }
    
    func validateTextField() {
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
        validateTextField()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

