//
//  TabBarController.swift
//  15-PrimeiroAppTabBarCurso
//
//  Created by Bruno Arruda on 4/11/23.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configItems()
        configTabBar()
    }
    

    func configItems() {
        guard let items = tabBar.items else {return}
        items[0].title = "Teste 01"
        items[1].title = "Teste 02"
        items[2].title = "Teste 03"
    }

    func configTabBar() {
        tabBar.layer.borderWidth = 0.2
        tabBar.layer.borderColor = UIColor.black.cgColor
        tabBar.backgroundColor = .white
    }

}
