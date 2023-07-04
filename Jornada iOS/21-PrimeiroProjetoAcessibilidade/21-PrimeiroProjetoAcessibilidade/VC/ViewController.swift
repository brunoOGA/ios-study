//
//  ViewController.swift
//  21-PrimeiroProjetoAcessibilidade
//
//  Created by Bruno Arruda on 5/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAccessibility()
    }
    
    func configAccessibility() {
        // isAccessibilityElement -> Ele possibilita a leitura da acessibilidade
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        screen?.trashImageView.isAccessibilityElement = true
        
        // accessibilityLabel -> É oque o voiceOver irá falar quando o cursor estiver no elemento
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        screen?.trashImageView.accessibilityLabel = "Imagem de um lixo"
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        screen?.trashImageView.accessibilityTraits = .image

        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel,
        let image = screen?.trashImageView else { return }
        
        // accessibilityElements -> ele ordena os elementos acessíveis
        view.accessibilityElements = [
            title, primeiro, segundo, terceiro, quarto, quinto, button, image
        ]
    }
}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        print(#function)
        UIAccessibility.post(notification: .screenChanged, argument: screen?.positionOneLabel)
    }
}
