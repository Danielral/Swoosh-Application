//
//  BorderButton.swift
//  Swoosh Application
//
//  Created by Daniel on 5/19/18.
//  Copyright © 2018 Daniel. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
