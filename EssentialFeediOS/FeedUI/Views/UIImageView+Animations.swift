//
//  UIImageView+Animations.swift
//  EssentialFeediOS
//
//  Created by Alexey Bolvonovich on 15/04/2024.
//

import UIKit

extension UIImageView {
    func setImageAnimated(_ newImage: UIImage?) {
        image = newImage
        
        guard newImage != nil else { return }
        alpha = 0
        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }
}
