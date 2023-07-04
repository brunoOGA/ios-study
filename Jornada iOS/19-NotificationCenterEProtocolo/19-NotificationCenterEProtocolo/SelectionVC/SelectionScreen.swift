//
//  SelectionScreen.swift
//  19-NotificationCenterEProtocolo
//
//  Created by Bruno Arruda on 4/28/23.
//

import UIKit

protocol SelectionScreenProtocol: AnyObject {
    func tappedMacbookButton()
    func tappedIMacButton()
}

class SelectionScreen: UIView {

    private weak var delegate: SelectionScreenProtocol?
    
    public func delegate(delegate: SelectionScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var descriptionLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.textAlignment = .center
        label.text = "Opções"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    lazy var macBookButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "macbook")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedMacBookButton), for: .touchUpInside)
        
        return button
    }()
    
    lazy var iMacButton: UIButton = {
        let button = UIButton(type: .system)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "imac")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedIMacButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedMacBookButton(_ sender: UIButton) {
        delegate?.tappedMacbookButton()
    }
    
    @objc func tappedIMacButton(_ sender: UIButton) {
        delegate?.tappedIMacButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(descriptionLabel)
        addSubview(macBookButton)
        addSubview(iMacButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            macBookButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 60),
            macBookButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            macBookButton.heightAnchor.constraint(equalToConstant: 150),
            macBookButton.widthAnchor.constraint(equalToConstant: 230),
            
            iMacButton.topAnchor.constraint(equalTo: macBookButton.bottomAnchor, constant: 40),
            iMacButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            iMacButton.heightAnchor.constraint(equalTo: macBookButton.widthAnchor),
            iMacButton.widthAnchor.constraint(equalTo: macBookButton.widthAnchor),
        ])
    }
}
