//
//  User.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 16/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import UIKit

enum Role: String {
    case ios
    case android
    case backend
    case po
    case qa
    case scrumMaster
    case trainee
    case head
    case architect
    case roleDefault

    var detail: String {
        switch self {
        case .ios:
            return "iOS"
        case .android:
            return "Android"
        case .backend:
            return "Backend"
        case .po:
            return "Product Owner"
        case .qa:
            return "Quality Assurance"
        case .scrumMaster:
            return "Scrum Master"
        case .trainee:
            return "Estagiário"
        case .head:
            return "COO"
        case .architect:
            return "Architect"
        case .roleDefault:
            return ""
        }
    }
}

struct Zupper: Decodable {

    static let identifier = "zuppers"
    let name: String
    let photo: String
    let role: String

    init(_ data: [String: Any]) {
        name = data["name"] as? String ?? ""
        photo = data["photo"] as? String ?? ""
        role = data["role"] as? String ?? ""
    }
}
