//
//  HomePresenter.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright (c) 2019 Zup. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

protocol HomePresenterInput {
    func presentZuppers(response: HomeScene.FetchZuppers.Response)
}

protocol HomePresenterOutput: class {
    func displayZuppers(viewModel: HomeScene.FetchZuppers.ViewModel)
}

class HomePresenter: HomePresenterInput {
    
    weak var output: HomePresenterOutput?
    
    // MARK: Presentation logic

    func presentZuppers(response: HomeScene.FetchZuppers.Response) {
        let viewModel: HomeScene.FetchZuppers.ViewModel!
        switch response.result {
        case .success(let owners):
            let zuppersModel = owners.map { HomeScene
                .FetchZuppers
                .ViewModel
                .ZupperModel(name: $0.name,
                             photo: $0.photo,
                             type: $0.type)
            }
            viewModel = HomeScene.FetchZuppers.ViewModel(result: .success(result: zuppersModel))
        case .failure(let err):
            viewModel = HomeScene.FetchZuppers.ViewModel(result: .failure(errorMessege: err.localizedDescription))
        }
        output?.displayZuppers(viewModel: viewModel)
    }
}