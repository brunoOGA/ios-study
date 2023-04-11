//
//  CustomCollectionViewCell.swift
//  14-CollectionViewAvancada
//
//  Created by Bruno Arruda on 4/11/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carLabel: UILabel!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setupCell(name: String) {
        carLabel.text = name
    }

}
