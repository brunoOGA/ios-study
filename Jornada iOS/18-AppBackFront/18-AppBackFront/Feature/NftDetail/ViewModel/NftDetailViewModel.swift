//
//  NftDetailsViewModel.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/21/23.
//

import UIKit

class NftDetailViewModel: NSObject {

    private let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    public var numberOfRowsInSection: Int {
        return 3
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
    
    public var nftId: Int {
        return nft.nftID ?? 0
    }
    
    public var nftTitle: String {
        return nft.nftNameImage ?? ""
    }
    
    public var nftDescription: String {
        return nft.nftDescription ?? ""
    }
    
    public var getNft: Nft {
        return nft
    }
    
    public func heightForRowAt(indexPath: IndexPath, width: CGFloat) -> CGFloat {
        switch NameCellNftDetail(rawValue: indexPath.row) {
        case .nftImage:
            return 400
        case .description:
            let totalLabel = nftDescription.height(withConstrainedWidth: width - 40, font: UIFont.systemFont(ofSize: 18))
            return totalLabel + 89
        case .latestDeal:
            return  HeightLatestDeal.height.rawValue * CGFloat(nft.latestDeals?.count ?? 0) + 75
        default:
            return 000
        }
    }
}
