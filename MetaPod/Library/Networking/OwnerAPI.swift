//
//  OwnerAPI.swift
//  Gitz
//
//  Created by Anderson Moura de Oliveira on 28/11/18.
//  Copyright © 2018 Anderson Oliveira. All rights reserved.
//

import Foundation

enum OwnerAPI {
    case searchOwner
}

extension OwnerAPI {
    
    var path: String {
        switch self {
        case .searchOwner: return "/users"
        }
    }

    var httpMethod: String {
        switch self {
        case .searchOwner:
            return "GET"
        }
    }
    
    var urlComponents: URLComponents? {
        return URLComponents(string: AppEnviroment.gitz.workspacesURL + path)
    }
}
