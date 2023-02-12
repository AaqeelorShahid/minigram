//
//  MainFeedController.swift
//  Nanameue Mini App
//
//  Created by Shahid on 2023-02-11.
//

import Foundation
import UIKit

private let cellIdentifier = "cell"

class MainFeedController: UICollectionViewController {
    

    override func viewDidLoad() {
        view.backgroundColor = .white
        initUI()
    }
    
    func initUI() {
        collectionView.backgroundColor = .white
        collectionView.register(FeedCollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
    }
}

// MARK: - UICollectionView Data Source

extension MainFeedController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! FeedCollectionViewCell
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
}

// MARK: - UICollectionViewFlowDelegate

extension MainFeedController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        var height = width + 8 + 40 + 8
        height += 110
        
        return CGSize(width: width, height: height)
    }
}
