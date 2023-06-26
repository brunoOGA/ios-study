//
 //  ViewController.swift
 //  18-AppBackFront
 //
 //  Created by Bruno Arruda on 4/25/23.
 //
import UIKit
import FirebaseAuth

 class LoginVC: UIViewController {

     var loginScreen: LoginScreen?
     var auth: Auth?
     var alert: AlertController?

     override func loadView() {
         loginScreen = LoginScreen()
         alert = AlertController(controller: self)
         view = loginScreen
     }

     override func viewDidLoad() {
         super.viewDidLoad()
         dismissKeyBoard()
         auth = Auth.auth()
         loginScreen?.delegate(delegate: self)
         loginScreen?.configTextFieldsDelegate(delegate: self)
         isEnableLoginButton(false)
     }
     
     func validateTextFields() {
         if (loginScreen?.emailTextField.text ?? "").isValid(validType: .email) && (loginScreen?.passwordTextField.text ?? "").isValid(validType: .password) {
             isEnableLoginButton(true)
         } else {
             isEnableLoginButton(false)
         }
     }
     
     func isEnableLoginButton(_ isEnable: Bool) {
         if isEnable {
             loginScreen?.loginButton.setTitleColor(.white, for: .normal)
             loginScreen?.loginButton.isEnabled = true
             loginScreen?.subLoginImageView.alpha = 1
         } else {
                 loginScreen?.loginButton.setTitleColor(.lightGray, for: .normal)
                 loginScreen?.loginButton.isEnabled = false
             loginScreen?.subLoginImageView.alpha = 0.4
         }
     }
     
 }

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        auth?.signIn(withEmail: loginScreen?.emailTextField.text ?? "", password: loginScreen?.passwordTextField.text ?? "", completion: {user, error in if error != nil {
            self.alert?.getAlert(title: "Falha no login", message: error?.localizedDescription ?? "")
        } else {
            let vc: TabBarVC = TabBarVC()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }})
    }
}
            
extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text?.isEmpty ?? false {
            textField.layer.borderWidth = 1.5
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            switch textField {
            case self.loginScreen?.emailTextField:
                if (loginScreen?.emailTextField.text ?? "").isValid(validType: .email) {
                    textField.layer.borderWidth = 1.5
                    textField.layer.borderColor = UIColor.white.cgColor
                } else {
                    textField.layer.borderWidth = 1.5
                    textField.layer.borderColor = UIColor.red.cgColor
                }
                break
            case self.loginScreen?.passwordTextField:
                if (loginScreen?.passwordTextField.text ?? "").isValid(validType: .password) {
                    textField.layer.borderWidth = 1.5
                    textField.layer.borderColor = UIColor.white.cgColor
                } else {
                    textField.layer.borderWidth = 1.5
                    textField.layer.borderColor = UIColor.red.cgColor
                }
                break
            default:
                break
            }
        }
        
        validateTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
