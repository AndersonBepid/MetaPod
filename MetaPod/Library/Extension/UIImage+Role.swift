//
//  UIImage+Role.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 16/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {

    convenience init?(role: Role) {
        self.init(named: role.rawValue)
    }
}
