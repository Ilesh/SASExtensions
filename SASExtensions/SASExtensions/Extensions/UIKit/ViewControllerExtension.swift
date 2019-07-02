//
//  ViewControllerExtension.swift
//
//
//  Created by Ilesh's 2018 on 02/07/19.
//  Copyright © 2019 Ilesh. All rights reserved.
//

import Foundation

extension UIViewController {
    
    /// OPEN LINK IN THE SAFARI
    ///
    ///
    /// - strUrl : string wen url with http or without http.
    func openUrl(strUrl:String){
        if strUrl == "" {
            return
        }
        if strUrl.hasPrefix("http"){
            if let url = URL(string: strUrl){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }else{
                Singleton.shared.showAlertWithSingleButton(strMessage:"Link can't be open.")
            }
        }else{
            if let url = URL(string: "http://\(strUrl)"){
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }else{
                Singleton.shared.showAlertWithSingleButton(strMessage:"Link can't be open.")
            }
        }
    }
    
    /// OPEN LINK IN THE SAFARI
    ///
    ///
    /// - number : string number with only digites
    func callOn(number:String) {
        if let phoneCallURL = URL(string: "tel://\(number.digits)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {
                if #available(iOS 10.0, *) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                } else {
                    // Fallback on earlier versions
                    application.openURL(phoneCallURL as URL)
                }
            }
        }
    }
}

