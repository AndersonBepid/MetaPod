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

    struct FetchOwners {
    
        struct Request {
            
        }
        
        struct Response {

            let result: InteractorResult<Owners>
        }
        
        struct ViewModel {

            typealias OwnersModel = [OwnerModel]

            struct OwnerModel {

                let name: String
                let photo: String
                let type: String
            }

            enum PresenterResult {
                case success(result: OwnersModel, owners: Owners)
                case failure(errorMessege: String)
            }

            let result: PresenterResult
        }
    }

    struct SelectOwner {
        
        struct Request {

            let ownerSelected: Owner
        }
        
        struct Response {

        }
        
        struct ViewModel {

        }
    }
}
