//
//  PostCardViewModel.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/5/23.
//

import UIKit

class PostCardViewModel {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loadCurrentStory(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }
}

