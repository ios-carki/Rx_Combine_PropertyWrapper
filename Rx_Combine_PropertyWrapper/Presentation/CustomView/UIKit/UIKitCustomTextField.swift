//
//  UIKitCustomTextField.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

final class UIKitCustomTextField: UITextField {
    
    var placeHolderText: String? { didSet { placeholder = placeHolderText } }
    var textFieldTextColor: UIColor? { didSet { textColor = textFieldTextColor } }
    var textFieldCornerRadius: CGFloat? { didSet { layer.cornerRadius = textFieldCornerRadius ?? 12 } }
    var textFieldBorderColor: CGColor? { didSet { layer.borderColor = textFieldBorderColor } }
    var textFieldBorderWidth: CGFloat? { didSet { layer.borderWidth = textFieldBorderWidth ?? 1 } }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupTextField()
    }
    
    private func setupTextField() {
        backgroundColor = .white
        
        placeholder = placeHolderText
        textColor = textFieldTextColor
        layer.cornerRadius = textFieldCornerRadius ?? 12
        layer.borderColor = textFieldBorderColor ?? UIColor.red.cgColor
        layer.borderWidth = textFieldBorderWidth ?? 5
    }
    
    func setPlaceHolderText(text: String?) -> Self {
        let copy = self
        copy.placeHolderText = text
        
        return copy
    }
    
    func setTextColor(color: UIColor?) -> Self {
        let copy = self
        copy.textFieldTextColor = color
        
        return copy
    }
    
    func setCornerRadius(radius: CGFloat?) -> Self {
        let copy = self
        copy.textFieldCornerRadius = radius
        
        return copy
    }
    
    func setBorderColor(color: CGColor?) -> Self {
        let copy = self
        copy.textFieldBorderColor = color
        
        return copy
    }
    
    func setBorderWidth(width: CGFloat?) -> Self {
        let copy = self
        copy.textFieldBorderWidth = width
        
        return copy
    }
}
