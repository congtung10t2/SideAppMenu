//
//  UIView+Extension.swift
//  SideMenuApp
//
//  Created by MAC on 5/4/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
extension UIView {
    func fitting(view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        self.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        self.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}
