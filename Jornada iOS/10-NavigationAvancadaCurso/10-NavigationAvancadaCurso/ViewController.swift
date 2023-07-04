//
//  ViewController.swift
//  10-NavigationAvancadaCurso
//
//  Created by Bruno Arruda on 3/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        // let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
        
        // Abordagem para apresentar um Modal
        
        // vc?.modalPresentationStyle = .fullScreen
        // self.present(vc ?? UIViewController(), animated: true)
        
        // Abordagem para chamar uma NavigationController
        
        // self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
        // Transitando dados entre telas
        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") {
            coder in return Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
        }
        
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
}

