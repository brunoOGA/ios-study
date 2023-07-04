//
//  CustomTableViewCell.swift
//  16-DesafioTaBarCurso
//
//  Created by Bruno Arruda on 4/18/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameUserLabel: UILabel!
    
    static let identifier: String = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        userImageView.clipsToBounds = true
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userImageView.contentMode = .scaleAspectFill
    }

    public func setupCell(profile: Profile) {
        userImageView.image = profile.photo
        nameUserLabel.text = profile.name
    }
    
}
