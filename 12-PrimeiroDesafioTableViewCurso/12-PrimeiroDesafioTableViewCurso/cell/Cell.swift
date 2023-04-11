//
//  Cell.swift
//  12-PrimeiroDesafioTableViewCurso
//
//  Created by Bruno Arruda on 3/30/23.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var carImageVIew: UIImageView!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    static let identifier: String = "Cell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageVIew.image = UIImage(named: "car")
    }

    func setupCell(_ brand: Brand) {
        brandLabel.text = brand.name
        yearLabel.text = brand.year
    }
}
