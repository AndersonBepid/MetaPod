//
//  ZupperWorker.swift
//  MetaPod
//
//  Created by Anderson Moura de Oliveira on 16/01/19.
//  Copyright © 2019 Zup. All rights reserved.
//

import Foundation
import Firebase
import UIKit

typealias Zuppers = [Zupper]

class ZupperWorker {

    static let singleton = ZupperWorker()
    
    func fetchAll(_ completion: @escaping (InteractorResult<Zuppers>) -> Void) {
        let db = Firestore.firestore()
        db.collection(Zupper.identifier).addSnapshotListener { documentSnapshot, error in
            guard let document = documentSnapshot else {
                completion(.failure(error! as NSError))
                return
            }
            var zuppers: Zuppers = []

            document.documents.forEach {
                let zupper = Zupper($0.data())
                zuppers.append(zupper)
            }
            completion(.success(zuppers))
        }
    }
}
