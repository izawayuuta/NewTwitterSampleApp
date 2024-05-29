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
    
    // ダミーデータ
    let dummyData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

        override func viewDidLoad() {
            super.viewDidLoad()

            // UITableViewのデリゲートとデータソースの設定
            HomeTableView.delegate = self
            HomeTableView.dataSource = self

            // UITableViewCellのクラスを登録
            HomeTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        }

        // UITableViewDataSourceプロトコルメソッド

        // セクションあたりの行数を返す
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dummyData.count
        }

        // セルを構成する
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = dummyData[indexPath.row]
            return cell
        }

        // UITableViewDelegateプロトコルメソッド

        // セルが選択されたときの処理
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("Selected: \(dummyData[indexPath.row])")
        }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func HomeTableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func HomeTableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
