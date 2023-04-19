//
//  AlertController.swift
//  16-DesafioTaBarCurso
//
//  Created by Bruno Arruda on 4/19/23.
//

import UIKit

enum TypeImageSelected {
    case camera
    case library
    case cancel
}

class AlertController: NSObject {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func chooseImage(completion: @escaping (_ option: TypeImageSelected ) -> Void) {
        let alertController: UIAlertController = UIAlertController(title: "Selecione uma das opções abaixo", message: nil, preferredStyle: .actionSheet)
        
        let camera = UIAlertAction(title: "Camera", style: .default) {
            (action) in
            completion(.camera)
            
        }
        
        let library = UIAlertAction(title: "Biblioteca", style: .default) {
            action in
            completion(.library)
        }
        
        let cancel = UIAlertAction(title: "Cancelar", style: .cancel) {
            action in
            completion(.cancel)
        }
        
        alertController.addAction(camera)
        alertController.addAction(library)
        alertController.addAction(cancel)
        
        self.controller.present(alertController, animated: true)
    }
    
    func alertInformatio(title: String, message: String) {
        let alertControoler: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default)
        
        alertControoler.addAction(ok)
        
        self.controller.present(alertControoler, animated: true)
    }
}
