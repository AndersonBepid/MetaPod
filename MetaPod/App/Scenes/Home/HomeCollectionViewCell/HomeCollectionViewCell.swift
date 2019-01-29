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
    @IBOutlet weak var roleDetailView: UIView!
    
    static let cellIdentifier = "\(HomeCollectionViewCell.self)"

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupStyle()
        createPanGesture()
    }
}

// MARK: Actions

extension HomeCollectionViewCell {

    @objc func roleDetailPan(_ sender: UIPanGestureRecognizer) {
        let offSetX = sender.translation(in: self.containerView).x
        if (offSetX <= 0) && (offSetX >= -(roleDetailView.frame.width - 29)) {
            UIView.animate(withDuration: 0.3) {
                self.roleDetailView.transform = CGAffineTransform(translationX: offSetX, y: 0)
            }
        }
        switch sender.state {
        case .ended:
            UIView.animate(withDuration: 0.3) {
                self.roleDetailView.transform = CGAffineTransform.identity
            }
        default:
            break
        }
    }
}

extension HomeCollectionViewCell {

    private func createPanGesture() {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(roleDetailPan(_:)))
        roleDetailView.addGestureRecognizer(pan)
    }
    
    private func setupStyle() {
        dropShadow()
        roleDetailView.dropShadow()
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
