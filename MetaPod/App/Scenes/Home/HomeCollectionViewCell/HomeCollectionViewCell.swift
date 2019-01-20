//
//  HomeCollectionViewCell.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var roleImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    
    static let cellIdentifier = "\(HomeCollectionViewCell.self)"

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupStyle()
    }
}

extension HomeCollectionViewCell {

    private func setupStyle() {
        layer.cornerRadius = 5
    }

    func fill(_ zupper: HomeScene.FetchZuppers.ViewModel.ZupperModel) {
        let urlImageString = zupper.photo
        nameLabel.text = zupper.name
        roleLabel.text = zupper.role.detail
        roleImageView.image = UIImage(role: zupper.role)
        profileImageView.loadImageUsingCache(withUrlString: urlImageString,
                                             defaultImage: #imageLiteral(resourceName: "profileDefault.png"),
                                             loadingActivityIndicatorStyle: .white)
    }
}
