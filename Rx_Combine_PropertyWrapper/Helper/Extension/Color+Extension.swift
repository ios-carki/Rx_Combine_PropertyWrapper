//
//  Color+Extension.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/05/29.
//

import SwiftUI

extension Color {
    
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >>  8) & 0xFF) / 255.0
        let b = Double((rgb >>  0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
    
    static func random()->Color {
        let r = Double.random(in: 0 ... 1)
        let g = Double.random(in: 0 ... 1)
        let b = Double.random(in: 0 ... 1)
        return Color(red: r, green: g, blue: b)
    }
    
    //MARK: Design
    static let mainBackgroundColor = Color(hex: "#212121")
    
    static let mainOrangeColor = Color(hex: "#F45E22")
    
    static let inactiveGray = Color(hex: "#A3A3A5")
    
    static let subTitleColor = Color.white.opacity(0.5)
    
    static let statusAlert = Color(hex: "#DE2E2E")
    
    static let statusFine = Color(hex: "#0AB663")
    static let statusUnknown = Color(hex: "#FFC700")
    
    //Dark
    static let gray300 = Color(hex: "#AAAAAA")
    static let gray400 = Color(hex: "#868686")
    static let gray500 = Color(hex: "#686868")
    static let gray600 = Color(hex: "#4A4A4A")
    static let gray700 = Color(hex: "#363636")
    static let gray800 = Color(hex: "#2D2D2D")
    static let gray900 = Color(hex: "#212121")
}
