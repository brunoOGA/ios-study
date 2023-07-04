//
//  ViewController.swift
//  12-PrimeiroDesafioTableViewCurso
//
//  Created by Bruno Arruda on 3/30/23.
//

import UIKit

class ViewController: UIViewController  {

    var list: [Brand] = [Brand(name: "BMW", year: "1916"),Brand(name: "FERRARI", year: "1947"), Brand(name: "RENAULT", year: "1898"), Brand(name: "HONDA", year: "1948")]
    
    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        tableVIew.delegate = self
        tableVIew.dataSource = self
        tableVIew.register(Cell.nib(), forCellReuseIdentifier: Cell.identifier)
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier, for: indexPath) as? Cell
        cell?.setupCell(list[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Marca \(list[indexPath.row].name) (\(list[indexPath.row].year))")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
