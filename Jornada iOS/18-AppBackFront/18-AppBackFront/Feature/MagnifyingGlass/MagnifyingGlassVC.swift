//
//  MagnifyingGlassVCViewController.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/24/23.
//

import UIKit

class MagnifyingGlassVC: UIViewController {
    
    private var screen: MagnifyingGlassScreen?
    private var urlImage: String

    override func loadView() {
        screen = MagnifyingGlassScreen()
        view = screen
    }
    
    required init(urlImage: String) {
        self.urlImage = urlImage
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configImage()
    }
    
    private func configImage() {
        guard let url = URL(string: urlImage) else {
            return
        }
        
        screen?.nftImageView.af.setImage(withURL: url)
    }

}

extension MagnifyingGlassVC: MagnifyingGlassScreenDelegate {
    func tappedBackButton() {
        dismiss(animated: true)
    }
}