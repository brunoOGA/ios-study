//
//  NftFilterCollectionViewCell.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/19/23.
//

import UIKit

class NftFilterCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: NftFilterCollectionViewCell.self)
    
    private lazy var screen: NftFilterCollectionViewCellScreen = {
        let view = NftFilterCollectionViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    private func addViews() {
        addSubview(screen)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraits() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    public func setupCell(filter: FilterNft) {
        screen.filterLabel.text = filter.title ?? ""
        if filter.isSelected ?? false {
            screen.filterLabel.backgroundColor = .purple
        } else {
            screen.filterLabel.backgroundColor =  UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)
        }
    }
}
