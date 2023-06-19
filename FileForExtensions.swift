//
//  FileForExtensions.swift
//  HW11
//
//  Created by Helena on 19.06.2023.
//

import UIKit

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 24, y: 5, width: 22.5, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 50, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 24, y: 5, width: 23, height: 22))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 100, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
