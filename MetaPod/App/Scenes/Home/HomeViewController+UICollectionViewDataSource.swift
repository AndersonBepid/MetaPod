//
//  HomeViewController+UICollectionViewDataSource.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ownersFormatted.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OwnerCollectionViewCell.cellIdentifier, for: indexPath)
        let zupper = ownersFormatted[indexPath.item]

        guard let homeCell = cell as? OwnerCollectionViewCell else {
            return UICollectionViewCell()
        }

        homeCell.fill(zupper)

        return homeCell
    }
}
