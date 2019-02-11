//
//  MetricsDetailViewController+UICollectionViewDelegate.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 11/02/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension MetricsDetailViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 16.0, height: 100.0)
    }
}
