//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Alexey Bolvonovich on 25/04/2024.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
