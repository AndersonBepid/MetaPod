//
//  RankingViewController+UICollectionDelegate.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 28/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension RankingViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 32.0, height: 55.0)
    }
}
