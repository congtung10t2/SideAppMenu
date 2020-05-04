//
//  MenuController.swift
//  SideMenuApp
//
//  Created by MAC on 5/4/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation
import UIKit
class MenuController: UIViewController {
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: "MenuOptionCell")
        tableView.backgroundColor = .darkGray
        view.addSubview(tableView)
        tableView.fitting(view: view)
    }
}
extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuOptionCell", for: indexPath) as? MenuOptionCell else {
            return UITableViewCell()
        }
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        return cell
    }
    
    
}
