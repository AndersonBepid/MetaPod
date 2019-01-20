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
        return zuppers.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.cellIdentifier, for: indexPath)
        let zupper = zuppers[indexPath.item]

        guard let homeCell = cell as? HomeCollectionViewCell else {
            return UICollectionViewCell()
        }

        homeCell.fill(zupper)

        return homeCell
    }
}
