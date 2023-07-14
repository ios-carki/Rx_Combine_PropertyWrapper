//
//  UIKitCustomTextField.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

import SnapKit

final public class UIKitCustomTextField: UITextField {
    //Title
    var titleText: String? { didSet { titleLabel.text = titleText } }
    var titleTextColor = TextFieldConfig.shared.defaultTitleTextColor
    var titleTextFont = TextFieldConfig.shared.defaulttitleTextFont
    
    let titleLabel: UILabel = {
        let view = UILabel()
        
        return view
    }()
    
    //Border
    var textFieldBorderWidth = TextFieldConfig.shared.defaultTextFieldBorderWidth
    var textFieldBorderColor = TextFieldConfig.shared.defaultTextFieldBorderColor
    var textFieldCornerRadius = TextFieldConfig.shared.defaultTextFieldCornerRadius
    
    let textFieldBorder: UIView = {
        let view = UIView()
        
        return view
    }()
    
    //TextField
    var textFieldTextColor = TextFieldConfig.shared.defaultTextFieldTextColor
    var textFieldTextFont = TextFieldConfig.shared.defaultTextFieldTextFont
    
    let textFieldSet: UITextField = {
        let view = UITextField()
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        configure()
        setLayout()
    }
    
    private func configure() {
        [titleLabel, textFieldBorder, textFieldSet].forEach {
            addSubview($0)
        }
        titleLabel.textColor = setTitleTextColor()
        titleLabel.font = setTitleTextFont()
        
        textFieldBorder.layer.borderWidth = setBorderWidth()
        textFieldBorder.layer.borderColor = setBorderColor()
        textFieldBorder.layer.cornerRadius = setCornerRadius()
        
        textFieldTextColor = setTextFieldTextColor()
        textFieldTextFont = setTextFieldTextFont()
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(-20)
            make.left.right.equalToSuperview()
        }
        
        textFieldBorder.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview().inset(4)
        }
        
        textFieldSet.snp.makeConstraints { make in
            make.edges.equalTo(textFieldBorder).inset(UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4))
        }
    }
    
    private func setTitleTextColor() -> UIColor {
        return titleTextColor
    }
    private func setTitleTextFont() -> UIFont {
        return titleTextFont
    }
    private func setBorderWidth() -> CGFloat {
        return textFieldBorderWidth
    }
    private func setBorderColor() -> CGColor {
        return textFieldBorderColor
    }
    private func setCornerRadius() -> CGFloat {
        return textFieldCornerRadius
    }
    private func setTextFieldTextColor() -> UIColor {
        return textFieldTextColor
    }
    private func setTextFieldTextFont() -> UIFont {
        return textFieldTextFont
    }
}
