//
//  RxViewController.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import UIKit

import RxSwift
import RxCocoa


final class RxViewController: UIViewController {
    private let mainView = RxView()
    private let viewModel = RxViewModel()
    private let disposeBag = DisposeBag()
    
    let observable = Observable<Int>.just(1)
    var count = 0
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        increaseClick()
        decreaseClick()
    }
    
    func increaseClick() {
        print("숫자 증가")
        mainView.increaseButton.rx.tap
            .subscribe(onNext: {
                self.count += 1
                self.mainView.counterLabel.text = String(self.count)
            })
            .disposed(by: disposeBag)
    }
    
    func decreaseClick() {
        print("숫자 감소")
        mainView.decreaseButton.rx.tap
            .subscribe(onNext: {
                self.count -= 1
                self.mainView.counterLabel.text = String(self.count)
            })
            .disposed(by: disposeBag)
    }
}
