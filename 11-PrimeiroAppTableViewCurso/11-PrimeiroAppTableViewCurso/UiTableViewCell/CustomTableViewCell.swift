//
//  CustomTableViewCell.swift
//  11-PrimeiroAppTableViewCurso
//
//  Created by Bruno Arruda on 3/28/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "Bruno"
    }
    
    func setupCell(title: String) {
        titleLabel.text = title
    }
    
}
