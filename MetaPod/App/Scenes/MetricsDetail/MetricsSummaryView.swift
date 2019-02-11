//
//  MetricsSummaryView.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 11/02/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import UIKit

class MetricsSummaryView: UIView {

    @IBAction func detailTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.75) {
            self.frame.size.height = UIScreen.main.bounds.height * 0.3
            self.setNeedsLayout()
        }
    }
}
