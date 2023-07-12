//
//  RxView.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import UIKit
import SwiftUI

final class RxView: BaseView {
    
    let titleView: UIView = {
        let view = UIView()
        view.backgroundColor = .purple
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let title: UILabel = {
        let view = UILabel()
        view.text = "Rx"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 20)
        return view
    }()
    
    let counterView: UIView = {
        let view = UIView()
        view.layer.borderWidth = 2
        view.backgroundColor = .clear
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let counterLabel: UILabel = {
        let view = UILabel()
        view.text = "0"
        view.textColor = .black
        view.font = UIFont.boldSystemFont(ofSize: 20)
        return view
    }()
    
    let functionStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 16
        return view
    }()
    
    let imageChangeFunctionButton: UIButton = {
        let view = UIButton()
        view.setTitle("이미지 바꾸기", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let loginFunctionButton: UIButton = {
        let view = UIButton()
        view.setTitle("로그인 뷰", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 12
        
        return view
    }()
    let decreaseButton: UIButton = {
        let view = UIButton()
        view.setTitle("감소", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = UIColor(Color.statusAlert)
        view.layer.cornerRadius = 12
        return view
    }()
    
    let increaseButton: UIButton = {
        let view = UIButton()
        view.setTitle("증가", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = UIColor(Color.statusFine)
        view.layer.cornerRadius = 12
        return view
    }()
    
    override func configureUI() {
        titleView.addSubview(title)
        counterView.addSubview(counterLabel)
        [imageChangeFunctionButton, loginFunctionButton].forEach {
            functionStackView.addArrangedSubview($0)
        }
        
        [titleView, counterView, functionStackView, decreaseButton, increaseButton].forEach {
            self.addSubview($0)
        }
        self.backgroundColor = .white
    }
    
    override func setConstraints() {
        titleView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(12)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(100)
        }
        
        title.snp.makeConstraints { make in
            make.center.equalTo(titleView.safeAreaLayoutGuide)
        }
        
        counterView.snp.makeConstraints { make in
            make.top.equalTo(titleView.snp.bottom).offset(40)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(100)
        }
        
        counterLabel.snp.makeConstraints { make in
            make.center.equalTo(counterView.safeAreaLayoutGuide)
        }
        
        functionStackView.snp.makeConstraints { make in
            make.top.equalTo(counterView.snp.bottom).offset(40)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(100)
        }
        
        decreaseButton.snp.makeConstraints { make in
            make.leading.equalTo(safeAreaLayoutGuide).offset(16)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-16)
            make.width.equalTo(increaseButton.snp.width)
            make.height.equalTo(50)
        }
        
        increaseButton.snp.makeConstraints { make in
            make.trailing.equalTo(safeAreaLayoutGuide).offset(-16)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-16)
            make.leading.equalTo(decreaseButton.snp.trailing).offset(20)
            make.height.equalTo(50)
        }
    }
}
