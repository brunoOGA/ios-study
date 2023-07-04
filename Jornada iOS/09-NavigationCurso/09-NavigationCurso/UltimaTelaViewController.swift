//
//  UltimaTelaViewController.swift
//  09-NavigationCurso
//
//  Created by Bruno Arruda on 3/26/23.
//

import UIKit

class UltimaTelaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedGoFirstScreen(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
