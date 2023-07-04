//
//  ViewController.swift
//  13-PrimeiroProjetoCollectionViewCurso
//
//  Created by Bruno Arruda on 4/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var data: [String] = ["car", "car", "car", "car"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configCollectionView()
    }

    func configCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        
        collectionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell
        
        cell?.setupCell(data[indexPath.row])
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
    
}

