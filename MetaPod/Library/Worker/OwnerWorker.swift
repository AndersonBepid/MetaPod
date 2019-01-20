//
//  OwnerWorker.swift
//  Gitz
//
//  Created by Anderson Moura de Oliveira on 28/11/18.
//  Copyright © 2018 Anderson Oliveira. All rights reserved.
//

import Foundation

typealias Owners = [Owner]

class OwnerWorker {
    
    static let singleton = OwnerWorker()
    
    func search(_ completion: @escaping (_ searchResults: InteractorResult<Owners>) -> Void) {
        let ownerAPI = OwnerAPI.searchOwner
        
        guard let urlComponents = ownerAPI.urlComponents else { return }
        
        guard let url = urlComponents.url else { return }
        let request = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else { return }
            do {
                let owner = try JSONDecoder().decode(Owners.self, from: data)
                completion(.success(owner))
            } catch {
                completion(.failure(error as NSError))
            }
        }
        task.resume()
    }
}
