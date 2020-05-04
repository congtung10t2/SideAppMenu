//
//  HomeViewController.swift
//  SideMenuApp
//
//  Created by MAC on 5/4/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import Foundation
import UIKit
class HomeViewController: UIViewController {
    var delegate: HomeControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "baseline_menu_white")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
    }
}
