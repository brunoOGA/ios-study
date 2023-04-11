//
//  CustomCollectionViewCell.swift
//  13-PrimeiroProjetoCollectionViewCurso
//
//  Created by Bruno Arruda on 4/9/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var carImageView: UIImageView!
    
    static let identifier: String = "CustomCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }

    func setupCell(_ nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
