//
//  RankingCollectionViewCell.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 28/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

class RankingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifierCell = "\(RankingCollectionViewCell.self)"

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupStyle()
    }
}

extension RankingCollectionViewCell {
    
    private func setupStyle() {
        containerView.layer.cornerRadius = 5
        dropShadow()
    }
    
    func fill(_ zupper: RankingScene.FetchAll.ViewModel.ZupperModel) {
        let urlImageString = zupper.photo
        nameLabel.text = zupper.name
        profileImageView.loadImageUsingCache(withUrlString: urlImageString,
                                             defaultImage: #imageLiteral(resourceName: "profileDefault.png"),
                                             loadingActivityIndicatorStyle: .white)
    }
}
