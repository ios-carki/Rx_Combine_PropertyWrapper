//
//  NavigationController.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import UIKit
import SwiftUI

class NavigationController: UINavigationController,UINavigationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        let item = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        viewController.navigationItem.backBarButtonItem = item
        viewController.navigationController?.navigationBar.tintColor = .black
        viewController.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        viewController.navigationItem.titleView?.tintColor = .white
        
        if var textAttributes = viewController.navigationController?.navigationBar.titleTextAttributes {
            textAttributes[NSAttributedString.Key.foregroundColor] = UIColor.white
            viewController.navigationController?.navigationBar.titleTextAttributes = textAttributes
        }
    }
}
