//
//  HomeRouter.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright (c) 2019 Zup. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol HomeRouterInput {
    
}

protocol HomeRouterDataSource: class {
    
}

protocol HomeRouterDataDestination: class {
    
}

class HomeRouter: HomeRouterInput {
    
    weak var viewController: HomeViewController!
    weak private var dataSource: HomeRouterDataSource!
    weak var dataDestination: HomeRouterDataDestination!
    
    init(viewController: HomeViewController, dataSource: HomeRouterDataSource, dataDestination: HomeRouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    // MARK: Navigation
    
    // MARK: Communication
    
    func passDataToNextScene(for segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        
    }
}
