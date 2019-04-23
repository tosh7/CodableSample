//
//  ViewController.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/20.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    var articles: [Article] = []
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        QiitaAPI.fetchArticle(completion:{ articles in
            self.articles = articles
            self.tableView.reloadData()
        })
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.titleLabel.text = articles[indexPath.row].title
        cell.nameLabel.text = articles[indexPath.row].userId
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
