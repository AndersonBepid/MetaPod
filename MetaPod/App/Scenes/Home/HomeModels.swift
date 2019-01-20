//
//  HomeModels.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 15/01/19.
//  Copyright (c) 2019 Zup. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates
//
//  Type "usecase" for some magic!

struct HomeScene {

    struct FetchZuppers {
    
        struct Request {
            
        }
        
        struct Response {
            let result: InteractorResult<Owners>
        }
        
        struct ViewModel {

            typealias ZuppersModel = [ZupperModel]

            struct ZupperModel {

                let name: String
                let photo: String
                let type: String
            }

            enum PresenterResult {
                case success(result: ZuppersModel)
                case failure(errorMessege: String)
            }

            let result: PresenterResult
        }
    }
}