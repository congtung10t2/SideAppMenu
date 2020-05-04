//
//  MenuOption.swift
//  SideMenuApp
//
//  Created by MAC on 5/4/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit
enum MenuOption: Int, CustomStringConvertible{
    case Profile
    case Inbox
    case Notifications
    case Settings
    var description: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Inbox:
            return "Inbox"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        }
    }
    var image: UIImage {
        return UIImage()
    }
}
