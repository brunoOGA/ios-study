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
        let wallet = UINavigationController(rootViewController: WalletVC())
        let profile = UINavigationController(rootViewController: ProfileVC())
        setViewControllers([home, wallet, profile], animated: false)
        tabBar.isTranslucent = false
        tabBar.tintColor = UIColor(red: 130/255, green: 26/255, blue: 201/255, alpha: 1.0)
        
        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
        
        guard let items = tabBar.items else { return }
        
        items[0].image = UIImage(systemName: "house")
        items[1].image = UIImage(systemName: "wallet.pass")
        items[2].image = UIImage(systemName: "person")
    }

}
