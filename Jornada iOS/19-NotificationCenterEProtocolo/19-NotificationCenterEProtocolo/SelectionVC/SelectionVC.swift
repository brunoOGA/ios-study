//
//  SelectionVC.swift
//  19-NotificationCenterEProtocolo
//
//  Created by Bruno Arruda on 4/28/23.
//

import UIKit

protocol SelectionVCProtocol: AnyObject {
    func updateIMac()
}

class SelectionVC: UIViewController {
    
    private weak var delegate: SelectionVCProtocol?
    
    public func delegate(delegate: SelectionVCProtocol?) {
        self.delegate = delegate
    }
    
    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        
        view = selectionScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)
    }

}

extension SelectionVC: SelectionScreenProtocol {
    func tappedMacbookButton() {
        NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        dismiss(animated: true)
    }
    
    func tappedIMacButton() {
        delegate?.updateIMac()
        dismiss(animated: true)
    }
    
    
}
