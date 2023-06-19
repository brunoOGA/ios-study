//
//  NFTData.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/19/23.
//

import Foundation

// MARK: - NFTData
struct NFTData: Codable {
    let logoImage: LogoImage?
    let filterListNft: [FilterNft]?
    let nftList: [Nft]?

    enum CodingKeys: String, CodingKey {
        case logoImage = "logo_image"
        case filterListNft = "filter_nft"
        case nftList = "nft_list"
    }
}

// MARK: - FilterNft
struct FilterNft: Codable {
    let title: String?
    let id: Int?
    let isSelected: Bool?
}

// MARK: - LogoImage
struct LogoImage: Codable {
    let image: String
}

// MARK: - Nft
struct Nft: Codable {
    let ownedBy: String?
    let price: String?
    let type: Int?
    let nftImage: String?
    let userName: String?
    let userImage: String?
    let nftPrice: Double?
    let nftID: Int?
    let nftNameImage, nftDescription: String?
    let titleLatestDeals: String?
    let latestDeals: [LatestDeal]?

    enum CodingKeys: String, CodingKey {
        case ownedBy = "owned_by"
        case price, type
        case nftImage = "nft_image"
        case userName = "user_name"
        case userImage = "user_image"
        case nftPrice = "nft_price"
        case nftID = "nft_id"
        case nftNameImage = "nft_name_image"
        case nftDescription = "nft_description"
        case titleLatestDeals = "title_latest_deals"
        case latestDeals = "latest_deals"
    }
}

// MARK: - LatestDeal
struct LatestDeal: Codable {
    let userName: String?
    let userImage: String?
    let nftPrice: Double?
    let lastAccess: String?

    enum CodingKeys: String, CodingKey {
        case userName = "user_name"
        case userImage = "user_image"
        case nftPrice = "nft_price"
        case lastAccess = "last_access"
    }
}
