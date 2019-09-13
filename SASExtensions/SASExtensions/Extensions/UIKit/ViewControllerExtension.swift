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
    func openUrl(strWebUrl:String){
        if strWebUrl == "" {
            return
        }
        var strUrl = ""
        if strWebUrl.contain(",") {
          strUrl = strWebUrl.components(separatedBy: ",").first!
        }else{
          strUrl = strWebUrl
        }
        strUrl = strUrl.trimmingCharacters(in: .whitespacesAndNewlines)
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
    /// OPEN LINK IN THE SAFARI
    ///
    ///
    /// isModel Return Bool value when controller is visible using model.
    var isModal: Bool {
        
        let presentingIsModal = presentingViewController != nil
        let presentingIsNavigation = navigationController?.presentingViewController?.presentedViewController == navigationController
        let presentingIsTabBar = tabBarController?.presentingViewController is UITabBarController
        return presentingIsModal || presentingIsNavigation || presentingIsTabBar
    }
}

