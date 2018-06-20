//
//  RealEstatePropertyTableViewController.swift
//  ContactsApp
//
//  Created by yading on 19/06/2018.
//  Copyright © 2018 yading. All rights reserved.
//

import UIKit

class RealEstatePropertyTableViewController: UIViewController, PropertyTableViewProtocol {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var number: UITextField!
    
    private var presenter: RealEstatePropertyPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = RealEstatePropertyPresenter(for: self)
        presenter.fatchProperties()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func set() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func refreshTable() {
        tableView.reloadData()
    }
    
    
    @IBAction func deleteItem(_ sender: UIButton) {
        if let num = Int(number.text!) {
            presenter.deleteCell(at: num)
        }
    }
    
    
}

extension RealEstatePropertyTableViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.propertyList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "propertyCell") as! RealEstatePropertyCell
        cell.setCell(with: presenter.propertyList[indexPath.row])
        return cell
    }
    
    
}
