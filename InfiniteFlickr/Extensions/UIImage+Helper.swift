//
//  UIImage+Helper.swift
//  InfiniteFlickr
//
//  Created by Julio Estrada on 2/19/18.
//  Copyright © 2018 Julio Estrada. All rights reserved.
//


import UIKit

extension UIImageView {
    func setImageColor(color: UIColor) {
        let templateImage = self.image?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        self.image = templateImage
        self.tintColor = color
    }
}
