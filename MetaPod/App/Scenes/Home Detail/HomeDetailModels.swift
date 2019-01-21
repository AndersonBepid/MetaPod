//
//  HomeDetailModels.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 20/01/19.
//  Copyright (c) 2019 Zup. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates
//
//  Type "usecase" for some magic!

struct HomeDetailScene {

    struct SelectOwner {

        struct Request {

        }

        struct Response {

            let owner: Owner
        }

        struct ViewModel {
            
            struct OwnerModel {
                
                let name: String
                let photo: String
                let type: String
            }
            
            let owner: OwnerModel
        }
    }
}