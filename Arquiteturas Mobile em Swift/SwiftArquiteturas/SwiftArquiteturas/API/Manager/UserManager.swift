//
//  UserManager.swift
//  SwiftArquiteturas
//
//  Created by Bruno Arruda on 7/5/23.
//

import Foundation

protocol UserManagerProtocol {
    func register(email: String, password: String,
                  sucessHandler: @escaping(UserModel) -> Void,
                  failureHandler: @escaping(Error) -> Void)
    func login(email: String, password: String,
               sucessHandler: @escaping(UserModel) -> Void,
               failureHandler: @escaping(Error) -> Void)
}

class UserManager: UserManagerProtocol {
    let business: UserBusinessProtocol
    
    init(business: UserBusinessProtocol) {
        self.business = business
    }
    
    func register(email: String, password: String,
                  sucessHandler: @escaping (UserModel) -> Void,
                  failureHandler: @escaping (Error) -> Void) {
        business.register(email: email, password: password) { result in
            switch result {
            case .success(let userModel):
                sucessHandler(userModel)
            case .failure(let error):
                failureHandler(error)
            }
        }
    }
    
    func login(email: String, password: String,
               sucessHandler: @escaping (UserModel) -> Void,
               failureHandler: @escaping (Error) -> Void) {
        business.login(email: email, password: password) { result in
            switch result {
            case .success(let userModel):
                sucessHandler(userModel)
            case .failure(let error):
                failureHandler(error)
            }
        }
    }
    
    
}
