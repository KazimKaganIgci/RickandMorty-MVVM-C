//
//  ViewController.swift
//  TestProject
//
//  Created by ınv on 18.09.2023.
//

import UIKit

//protocol MainViewProtocol {
//    func showResult(result:[Result]?)
//}

class ViewController: UIViewController {
    
    var mainVM: MainViewModel // mainVM özelliği
    
    init(viewModel: MainViewModel) {
        self.mainVM = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        tableView.frame = view.bounds
        
        mainVM.characterListItemViewModels.bind { [weak self] _ in
                   self?.reloadTableView()
               }
      
        
    }
    func reloadTableView() {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        
    }

    
    
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainVM.characterListItemViewModels.value?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("")
        }
        TakeUrlImage.getUIimage(url: (mainVM.characterListItemViewModels.value?[indexPath.row].imageUrl)!) { image in
            cell.configure(with: (image)!, label: self.mainVM.characterListItemViewModels.value?[indexPath.row].fullNameText ?? self.mainVM.status,detailLabel:self.mainVM.characterListItemViewModels.value?[indexPath.row].locationNameText ?? self.mainVM.status)
        }
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.mainVM.onTapCharacter(index: indexPath.row)
        
        
        
        
    }
    
    
    
    
}
