//
//  HomeViewModel.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/2/23.
//

import UIKit

class HomeViewModel {

    public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        }
        
        return CGSize(width: frame.width - 120, height: frame.height)
    }
}
