//
//  RoundedBorderTextField.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 05..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class RoundedBorderTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        let placeholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.2784313725, green: 0.462745098, blue: 0.9019607843, alpha: 1)])
        attributedPlaceholder = placeholder
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.cornerRadius = frame.height / 2
        layer.borderColor = #colorLiteral(red: 0.2784313725, green: 0.462745098, blue: 0.9019607843, alpha: 1)
        layer.borderWidth = 3
    }
}
