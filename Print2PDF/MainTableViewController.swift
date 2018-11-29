//
//  MainTableViewController.swift
//  Print2PDF
//
//  Created by Zion Perez on 11/29/18.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicDisclosureCell", for: indexPath)
        // Configure the cell...
        if indexPath.row == 0 {
            cell.textLabel?.text = "Delay PDF Export"
        } else {
            cell.textLabel?.text = "Export PDF Immediately"
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("CELL SELECTED: \(indexPath.description)")
        if indexPath.row == 0 {
            let preview = PreviewViewController()
            preview.exportImmediately = false
            self.navigationController?.pushViewController(preview, animated: true)
        } else {
            let preview = PreviewViewController()
            preview.exportImmediately = true
            self.navigationController?.pushViewController(preview, animated: true)
        }
    }
}
