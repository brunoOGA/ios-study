//
//  UserModel.swift
//  SwiftArquiteturas
//
//  Created by Bruno Arruda on 7/5/23.
//

import Foundation

struct UserModel: Codable {
    let email: String
    let password: String
    
    init() {
        self.email = String()
        self.password = String()
    }
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
