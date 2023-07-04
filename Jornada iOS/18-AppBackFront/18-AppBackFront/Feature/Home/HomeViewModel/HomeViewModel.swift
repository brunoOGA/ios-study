//
//  HomeViewModel.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/19/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func success()
    func error()
}

class HomeViewModel {
    private let service: HomeService = HomeService()
    private var nftData: NFTData?
    private var searchNftData: NFTData?
    weak private var delegate: HomeViewModelDelegate?
    
    public func delegate(delegate: HomeViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchRequest(_ typeFetch: TypeFetch) {
        switch typeFetch {
        case .mock :
            service.getHomeFromJson { result, failure in
                if let result {
                    self.nftData = result
                    self.searchNftData = result
                    self.delegate?.success()
                } else {
                    self.delegate?.error()
                }
            }
        case .request:
            service.getHome { result, failure in
                if let result {
                    self.nftData = result
                    self.searchNftData = result
                    self.delegate?.success()
                } else {
                    self.delegate?.error()
                }
            }
        }
    }
    
    var numberOfItemsInSection: Int {
        return searchNftData?.filterListNft?.count ?? 0
    }
    
    func loadCurrentFilterNft(indexPath: IndexPath) -> FilterNft {
        return searchNftData?.filterListNft?[indexPath.row] ?? FilterNft()
    }
    
    var sizeForItemAt: CGSize {
        return CGSize(width: 100, height: 34)
    }
    
    var numberOfRowsInSection: Int {
        return searchNftData?.nftList?.count ?? 0
    }
    
    func loadCurrentNft(indexPath: IndexPath) -> Nft {
        return searchNftData?.nftList?[indexPath.row] ?? Nft()
    }
    
    var heightForRowAt: CGFloat {
        return 360
    }
    
    var typeFilter: Int? {
        return searchNftData?.filterListNft?.first(where: {$0.isSelected == true})?.id
    }
    
    public func filterSearchText(text: String) {
        var nftList: [Nft] = []
        
        if typeFilter == 0 {
            nftList = nftData?.nftList ?? []
        } else {
            nftList = nftData?.nftList?.filter({$0.type == typeFilter}) ?? []
        }
        
        if text.isEmpty {
            searchNftData?.nftList = nftList
        } else {
            searchNftData?.nftList = nftList.filter({ nft in
                return nft.userName?.lowercased().contains(text.lowercased()) ?? false
            })
        }
    }
    
    public func setFilter(indexPath: IndexPath, searchText: String) {
        var filterNft: [FilterNft] = []
        
        for (index, value) in (searchNftData?.filterListNft ?? []).enumerated() {
            var type = value
            if index == indexPath.row {
                type.isSelected = true
            } else {
                type.isSelected = false
            }
            filterNft.append(type)
        }
        
        searchNftData?.filterListNft = filterNft
        
        filterSearchText(text: searchText)
    }
}
