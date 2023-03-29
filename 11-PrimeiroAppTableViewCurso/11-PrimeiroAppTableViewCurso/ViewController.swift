//
//  ViewController.swift
//  11-PrimeiroAppTableViewCurso
//
//  Created by Bruno Arruda on 3/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listName: [String] = ["Bruno", "Caio", "Matheus", "Pedro", "Felipe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configTableView()
    }

    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
}

// MARK: - PROTOCOLS TABLEVIEW

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath)
            as? CustomTableViewCell
        cell?.setupCell(title: listName[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(listName[indexPath.row])
    }
    
    
}

