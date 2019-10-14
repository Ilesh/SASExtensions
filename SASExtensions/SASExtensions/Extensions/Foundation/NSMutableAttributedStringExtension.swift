//
//  NSMutableAttributedStringExtension.swift
//
//
//  Created by Ilesh's 2018 on 14/10/19.
//  Copyright © 2019 Ilesh's. All rights reserved.
//

import Foundation

extension NSMutableAttributedString {
    
    /// bold(...)
    ///
    /// - text: String for which do you want attributed
    /// - size: Font size of the string
    /// - color: default color is black and also we can set different.
    @discardableResult func bold(_ text: String, size: CGFloat, color:UIColor = .black) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont(name: Theme.Font.roboto.Bold, size: size)!,.foregroundColor: color]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        append(boldString)
        return self
    }
    
    /// regular(...)
    ///
    /// - text: String for which do you want attributed
    /// - size: Font size of the string
    /// - color: default color is black and also we can set different.
    @discardableResult func regular(_ text: String, size: CGFloat, color:UIColor = .black) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont(name: Theme.Font.roboto.Regular, size: size)!,.foregroundColor: color]
        let regularString = NSMutableAttributedString(string:text, attributes: attrs)
        append(regularString)
        return self
    }
    
    /// Medium(...)
    ///
    /// - text: String for which do you want attributed
    /// - size: Font size of the string
    /// - color: default color is black and also we can set different.
    @discardableResult func medium(_ text: String, size: CGFloat, color:UIColor = .black) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: UIFont(name: Theme.Font.roboto.Medium, size: size)!,.foregroundColor: color]
        let mediumString = NSMutableAttributedString(string:text, attributes: attrs)
        append(mediumString)
        return self
    }
    
    /// normal(...)
    ///
    /// - text: String for which do you want attributed
    /// - size: Font size of the string
    /// - color: default color is black and also we can set different.
    @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
        let normal = NSAttributedString(string: text)
        append(normal)
        return self
    }
}
