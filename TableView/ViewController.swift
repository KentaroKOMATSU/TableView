//
//  ViewController.swift
//  TableView
//
//  Created by P01575 on 2021/06/08.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 利用可能なセルを取得する
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        // 値を設定する
        cell.textLabel!.text = "Row\(indexPath.row)"
        
        return cell
    }
}

