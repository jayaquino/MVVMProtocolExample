//
//  TableViewController.swift
//  MVVMPractice
//
//  Created by Nelson Aquino Jr  on 4/17/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewCellViewModel?
    var user : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = TableViewCellViewModel()
        viewModel?.delegate = self
        viewModel?.fetchData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell")!
        cell.textLabel?.text = user
        return cell
    }

}

extension TableViewController: TableViewCellViewModelDelegate {
    func didFetchData(data: String) {
        self.user = data
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func didFailWithError(error: Error) {
        print("Errr fetching data")
    }
    
    
}
