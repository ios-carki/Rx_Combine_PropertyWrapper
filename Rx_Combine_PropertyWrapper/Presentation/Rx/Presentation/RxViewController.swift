//
//  RxViewController.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import UIKit

final class RxViewController: UIViewController {
    private let mainView = RxView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
