//
//  ViewController.swift
//  18-AppBackFront
//
//  Created by Bruno Arruda on 6/24/23.
//

import UIKit

enum WalletNameCell: Int {
    case quotationEth = 0
    case transactionList = 1
}

class WalletVC: UIViewController {
    
    var screen: WalletScreen?
    var viewModel = WalletViewModel()
    
    override func loadView() {
        screen = WalletScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        viewModel.fetch(.request)
    }

}

extension WalletVC: WalletViewModelDelegate {
    func success() {
        DispatchQueue.main.async {
            self.screen?.configTableViewProtocols(delegate: self, dataSource: self)
            self.screen?.tableView.reloadData()
        }
    }
    
    func error() {
    
    }
}

extension WalletVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch WalletNameCell(rawValue: indexPath.row) {
        case .quotationEth:
            let cell = tableView.dequeueReusableCell(withIdentifier: QuotationEthTableViewCell.identifier, for: indexPath) as? QuotationEthTableViewCell
            cell?.setupCell(data: viewModel.quotationEthereum)
            return cell ?? UITableViewCell()
        case .transactionList:
            let cell = tableView.dequeueReusableCell(withIdentifier: LatestTransactionsTableViewCell.identifier, for: indexPath) as? LatestTransactionsTableViewCell
            cell?.setupCell(data: viewModel.transactionList)
            return cell ?? UITableViewCell()
        default:
            return UITableViewCell()
        
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
}
