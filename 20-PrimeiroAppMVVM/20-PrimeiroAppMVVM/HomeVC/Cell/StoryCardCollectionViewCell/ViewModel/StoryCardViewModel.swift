//
//  StoryCardViewModel.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/3/23.
//

import UIKit

class StoryCardViewModel {

    private var listStory: [Stories]
    
    init(listStory: [Stories]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    func loadCurrentStory(indexPath: IndexPath) -> Stories {
        listStory[indexPath.row]
    }
}
