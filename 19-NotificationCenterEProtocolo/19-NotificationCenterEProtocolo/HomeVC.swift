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
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacBook(notification: )), name: Notification.Name("macbook"), object: nil)
    }

    @objc func updateMacBook(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "MacBook Pro"
        view.backgroundColor = .blue
    }
}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: true)
    }
}

extension HomeVC: SelectionVCProtocol {
    func updateIMac() {
        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
        homeScreen?.descriptionLabel.text = "IMac Pro"
        view.backgroundColor = .red
    }
}
