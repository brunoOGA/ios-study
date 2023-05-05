//
//  PostCardCollectionViewCell.swift
//  20-PrimeiroAppMVVM
//
//  Created by Bruno Arruda on 5/5/23.
//

import UIKit

class PostCardCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "PostCardCollectionViewCell"
    
    private var screen: PostCardCollectionViewCellScreen = PostCardCollectionViewCellScreen()
    
    private var viewModel: PostCardViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        screen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(listPosts: [Posts]) {
        viewModel = PostCardViewModel(listPosts: listPosts)
    }
}

extension PostCardCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel?.numberOfItems ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 450)
    }
}
