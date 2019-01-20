//
//  UserCollectionViewCell.swift
//  Gitz
//
//  Created by Anderson Moura de Oliveira on 28/11/18.
//  Copyright © 2018 Anderson Oliveira. All rights reserved.
//

import UIKit

class OwnerCollectionViewCell: UICollectionViewCell {
    
    // MARK IBOutlets

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    // MARK: Static Properties

    static let cellIdentifier = "\(OwnerCollectionViewCell.self)"

    // MARK: Properties

    override func draw(_ rect: CGRect) {
        setupStyle()
    }
}

extension OwnerCollectionViewCell {

    func fill(_ sender: Owner) {
        userImageView.loadImageUsingCache(withUrlString: sender.avatar, defaultImage: #imageLiteral(resourceName: "github"), loadingActivityIndicatorStyle: .whiteLarge)
        nameLabel.text = sender.name
        typeLabel.text = sender.type
        containerView.layer.cornerRadius = 8.0
        dropShadow()
    }
}

// MARK: Setup Style

extension OwnerCollectionViewCell {

    private func setupStyle() {
        userImageView.layer.cornerRadius = userImageView.frame.height / 2.0
        userImageView.layer.borderColor = #colorLiteral(red: 0.25, green: 0.25, blue: 0.25, alpha: 0.25)
        userImageView.layer.borderWidth = 1.0
    }
}
