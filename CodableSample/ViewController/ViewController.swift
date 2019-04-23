//
//  ViewController.swift
//  CodableSample
//
//  Created by Satoshi Komatsu on 2019/04/20.
//  Copyright © 2019 Satoshi Komatsu. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.titleLabel.text = ""
        cell.nameLabel.text = ""
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
}
