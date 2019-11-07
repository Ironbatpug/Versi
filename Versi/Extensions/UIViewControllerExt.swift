//
//  UIViewControllerExt.swift
//  Versi
//
//  Created by Molnár Csaba on 2019. 11. 07..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import SafariServices

extension UIViewController {
    func presentSFSafariVCFor(url: String) {
        let readmeURL = URL(string: url + readmeSegment)
        let safariVC = SFSafariViewController(url: readmeURL!)
        present(safariVC, animated: true, completion: nil)
    }
}
