//
//  CircularView.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import UIKit

class CircularView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.masksToBounds = true
        layer.cornerRadius = frame.height / 2.0
    }
}
