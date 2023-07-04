//
//  LoginViewModelViewController.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/16/23.
//

import UIKit
import Firebase

protocol LoginViewModelProtocol: AnyObject {
    func successLogin()
    func errorLogin(errorMessage: String)
}

class LoginViewModel {
    
    private weak var delegate: LoginViewModelProtocol?
    
    public func delegate(delegate: LoginViewModelProtocol?) {
        self.delegate = delegate
    }
    
    private var auth = Auth.auth()
    
    public func login(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.delegate?.successLogin()
            } else {
                self.delegate?.errorLogin(errorMessage: error?.localizedDescription ?? "")
            }
        }
    }
}
