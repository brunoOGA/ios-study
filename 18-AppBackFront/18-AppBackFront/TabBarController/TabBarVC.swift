//
//  TabBarVC.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/13/23.
//

import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTapBar()
    }
    
    private func setupTapBar() {
        let home = UINavigationController(rootViewController: HomeVC())
        setViewControllers([home], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 130/255, green: 26/255, blue: 201/255, alpha: 1.0)
        tabBar.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "trash")
    }

}
