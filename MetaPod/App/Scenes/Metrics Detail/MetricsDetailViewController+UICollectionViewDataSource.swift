//
//  MetricsDetailViewController+UICollectionViewDataSource.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 11/02/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension MetricsDetailViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MetricsDetailCollectionViewCell.cellIdentifier, for: indexPath)
        return cell
    }
}
