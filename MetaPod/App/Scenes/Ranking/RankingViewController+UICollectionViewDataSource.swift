//
//  RankingViewController+UICollectionViewDataSource.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 28/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension RankingViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return zuppersRaking.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RankingCollectionViewCell.identifierCell, for: indexPath)
        let zupper = zuppersRaking[indexPath.item]
        guard let rankingCell = cell as? RankingCollectionViewCell else { return UICollectionViewCell() }
        
        rankingCell.fill(zupper)
        
        return cell
    }
}
