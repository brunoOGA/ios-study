//
//  ViewController.swift
//  19-NotificationCenterEProtocolo
//
//  Created by Bruno Arruda on 4/28/23.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
    }

}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}

