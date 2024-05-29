//
//  HomeViewController.swift
//  TwitterSampleApp
//
//  Created by 俺の MacBook Air on 2024/05/27.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var HomeTableView: UITableView!
    
}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    /// データの数（＝セルの数）を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    /// 各セルの内容を返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
        
        
    }
    
}

