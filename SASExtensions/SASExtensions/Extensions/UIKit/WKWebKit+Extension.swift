//
//  WKWebKit+Extension.swift
//  SmartVillage
//
//  Created by Ilesh's 2018 on 27/09/19.
//  Copyright © 2019 Ilesh's. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    
    func load(_ urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            load(request)
        }
    }
}
