//
//  LoginViewController.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    private let mainView = LoginView()
    private let disposeBag = DisposeBag()
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
