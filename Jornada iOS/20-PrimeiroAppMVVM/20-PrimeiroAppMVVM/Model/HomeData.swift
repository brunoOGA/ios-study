//
//  HomeData.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/16/23.
//

import UIKit

// Decodable: decodifica -> transforma um json em um objeto
// Encodable: codigica um objeto -> transforma um objeto em um json
// Codable: codifica e decodifica

struct HomeData: Codable {
    var stories: [Stories]?
    
    var posts: [Posts]?
}
