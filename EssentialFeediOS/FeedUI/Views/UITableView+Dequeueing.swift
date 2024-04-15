//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Alexey Bolvonovich on 15/04/2024.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
