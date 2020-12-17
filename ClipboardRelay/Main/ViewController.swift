//
//  ViewController.swift
//  ClipboardRelay
//
//  Created by Harlans on 2020/11/14.
//

import UIKit

class ViewController: UIViewController {

    let cellId = "MainCellId"
    
    @IBOutlet weak var tableView: UITableView!
    var dataSource = ["1", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: cellId)
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = self.dataSource[indexPath.row]
        return cell
    }
    
}

