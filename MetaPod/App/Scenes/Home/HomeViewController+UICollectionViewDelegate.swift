//
//  HomeViewController+UICollectionViewDelegate.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 32.0, height: 80.0)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ownerSelected = owners[indexPath.item]
        let request = HomeScene.SelectOwner.Request(ownerSelected: ownerSelected)
        output?.selectOwner(request: request)
        router?.navigateToHomeDetailScene()
    }
}
