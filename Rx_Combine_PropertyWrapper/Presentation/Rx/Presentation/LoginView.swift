//
//  LoginView.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

import SnapKit

final class LoginView: BaseView {
    
    let idTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Input ID"
        view.textColor = .black
        view.layer.cornerRadius = 12
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    let pwTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Input Password"
        view.textColor = .black
        view.layer.cornerRadius = 12
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    let confirmPasswordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Confirm Password"
        view.textColor = .black
        view.layer.cornerRadius = 12
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        
        return view
    }()
    
    let loginButton: UIButton = {
        let view = UIButton()
        view.setTitle("로그인", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let customTextFieldTest: UIKitCustomTextField = {
        let view = UIKitCustomTextField()
        return view
    }()
        .setPlaceHolderText(text: "adsf")
        .setTextColor(color: UIColor.red)
        .setCornerRadius(radius: 12)
        .setBorderColor(color: UIColor.blue.cgColor)
        .setBorderWidth(width: 3)
    
    override func configureUI() {
        [idTextField, pwTextField, confirmPasswordTextField, customTextFieldTest, loginButton].forEach {
            self.addSubview($0)
        }
        self.backgroundColor = .white
    }
    
    override func setConstraints() {
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
        
        pwTextField.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
        
        confirmPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(pwTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
        customTextFieldTest.snp.makeConstraints { make in
            make.top.equalTo(confirmPasswordTextField.snp.bottom).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width / 2)
            make.height.equalTo(50)
        }
    }
}
