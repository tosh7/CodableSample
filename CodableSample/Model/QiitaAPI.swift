//
//  QiitaAPI.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/22.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import Foundation

final class QiitaAPI: APIModel {
    static var url: String = "https://qiita.com/api/v2/items"
    
    static func fetchArticle(completion: @escaping (([Article]) -> Void)) {
        
        guard var urlComponents = URLComponents(string: url) else { return }
        
        urlComponents.queryItems = [
            URLQueryItem(name: "per_page", value: "50")
        ]
        
        let task = URLSession.shared.dataTask(with: urlComponents.url!) {data, response, error in
            guard let jsonData = data else { return }
            
            do {
                let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: [])
                
                guard let jsonArray = jsonObject as? [Any] else { return }
                let articles = jsonArray.flatMap{$0 as? [String: Any]}.map{Article($0)}
                completion(articles)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
        
    }
}
