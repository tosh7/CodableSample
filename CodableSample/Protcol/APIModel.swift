//
//  APIModel.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/22.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import Foundation

protocol APIModel {
    
    var url : String { set get }
    
    func fetchArticle(completion: @escaping (([Article]) -> Void))
}
