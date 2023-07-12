//
//  ImageChangeViewController.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

import RxCocoa
import RxSwift

class ImageChangeViewController: UIViewController {

    private let mainView = ImageChangeView()
    private let disposeBag = DisposeBag()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        randomImageGenerate()
    }
    
    func randomImageGenerate() {
        mainView.changeButton.rx.tap
            .subscribe(onNext: {
                self.mainView.imageView.image = UIImage(named: String(Int.random(in: 1...6)))
            })
            .disposed(by: disposeBag)
    }
}
