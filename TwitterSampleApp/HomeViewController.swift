//
//  HomeViewController.swift
//  TwitterSampleApp
//
//  Created by 俺の MacBook Air on 2024/05/27.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var HomeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeTableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
        
        // UITableViewのデリゲートとデータソースの設定
        //            HomeTableView.delegate = self
        //            HomeTableView.dataSource = self
        
        // UITableViewCellのクラスを登録
        HomeTableView.register(UINib(nibName: "TweetTableViewCell", bundle: nil), forCellReuseIdentifier: "customCell")
    }
    
    // UITableViewDataSourceプロトコルメソッド
    
    // セクションあたりの行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    // セルを構成する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! TweetTableViewCell
//        cell.img.image = UIImage(systemName: "swift")
        cell.tweetLabel.text = "Swift"
        return cell
    }
}
