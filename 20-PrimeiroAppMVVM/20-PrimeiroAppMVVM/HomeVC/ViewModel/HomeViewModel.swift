//
//  HomeViewModel.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/2/23.
//

import UIKit

class HomeViewModel {
    
    private var posts = [
        Posts(profileImage: "img4", userName: "Samuel", postImage: "post1"),
        Posts(profileImage: "img5", userName: "Ariana", postImage: "post2"),
        Posts(profileImage: "img6", userName: "Bruno", postImage: "post3"),
        Posts(profileImage: "img7", userName: "Pedro", postImage: "post4"),
    ]
    
    private var story = [
        Stories(image: "img1", userName: "Add Story"),
        Stories(image: "img2", userName: "Jack"),
        Stories(image: "img3", userName: "Carolina"),
        Stories(image: "img4", userName: "Samuel"),
        Stories(image: "img5", userName: "Ariana"),
        Stories(image: "img6", userName: "Bruno"),
        Stories(image: "img7", userName: "Pedro"),
    ]
    
    public var getListStory: [Stories] {
        story
    }

    public var numberOfItems: Int {
        1
    }
    
    public var getListPosts: [Posts] {
        posts
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        }
        
        return CGSize(width: frame.width - 120, height: frame.height)
    }
}
