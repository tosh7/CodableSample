//
//  Article.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/21.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import Foundation

struct Article {
    
    var title = ""
    var userId = ""
    
}

extension Article {
    
    init(_ json: [String: Any]) {
        
        if let title = json["title"] as? String {
            self.title = title
        }
        
        if let user = json["user"] as? [String: Any] {
            if let userId = user["id"] as? String {
                self.userId = userId
            }
        }
    }
}
