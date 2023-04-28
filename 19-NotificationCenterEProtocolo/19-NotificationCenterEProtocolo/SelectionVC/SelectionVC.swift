//
//  SelectionVC.swift
//  19-NotificationCenterEProtocolo
//
//  Created by Bruno Arruda on 4/28/23.
//

import UIKit

class SelectionVC: UIViewController {
    
    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        
        view = selectionScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
