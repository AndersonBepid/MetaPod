//
//  MetricsDetailConfigurator.swift
//  MetaPod
//
//  Created by Anderson Oliveira on 11/02/19.
//  Copyright (c) 2019 Zup. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

// MARK: Connect View, Interactor, and Presenter

extension MetricsDetailInteractor: MetricsDetailViewControllerOutput, MetricsDetailRouterDataSource, MetricsDetailRouterDataDestination {
}

extension MetricsDetailPresenter: MetricsDetailInteractorOutput {
}

class MetricsDetailConfigurator {
    // MARK: Object lifecycle
    
    static let sharedInstance = MetricsDetailConfigurator()
    
    private init() {}
    
    // MARK: Configuration
    
    func configure(viewController: MetricsDetailViewController) {
        
        let presenter = MetricsDetailPresenter()
        presenter.output = viewController
        
        let interactor = MetricsDetailInteractor()
        interactor.output = presenter
        
        let router = MetricsDetailRouter(viewController: viewController, dataSource: interactor, dataDestination: interactor)
        
        viewController.output = interactor
        viewController.router = router
    }
}
