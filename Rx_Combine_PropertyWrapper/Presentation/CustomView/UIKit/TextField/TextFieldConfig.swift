//
//  TextFieldConfig.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/14.
//

import UIKit

public class TextFieldConfig {
    public static var shared = TextFieldConfig()
    private init() {}
    
    //Title
    public var defaultTitleTextColor: UIColor = .black
    public var defaulttitleTextFont: UIFont = UIFont.systemFont(ofSize: 16)
    
    //Border
    public var defaultTextFieldBorderWidth: CGFloat = 1.5
    public var defaultTextFieldBorderColor: CGColor = UIColor.black.cgColor
    public var defaultTextFieldCornerRadius: CGFloat = 12
    
    //TextField
    public var defaultTextFieldTextColor: UIColor = .black
    public var defaultTextFieldTextFont: UIFont = UIFont.systemFont(ofSize: 12)
}
