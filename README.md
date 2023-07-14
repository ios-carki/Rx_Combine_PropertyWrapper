[![Language](https://img.shields.io/badge/language-Swift%205.0-skyblue.svg)](https://swift.org)
![UI](https://img.shields.io/badge/UI-SwiftUI-blue.svg)
![UI](https://img.shields.io/badge/UI-UIKit-red.svg)
![Xcode](https://img.shields.io/badge/Xcode-11.2.1+-green)
![Version](https://img.shields.io/badge/iOS-16.2-yellow)

# CustomTextfield (UIKit)
### Config
```swift
import UIKit

public class TextFieldConfig {
    public static var shared = TextFieldConfig()
    private init() {}
    
    //Title
    public var defaultTitleTextColor: UIColor = .black
    public var defaultTitleTextFont: UIFont = UIFont.systemFont(ofSize: 16)
    
    //Border
    public var defaultTextFieldBorderWidth: CGFloat = 1.5
    public var defaultTextFieldBorderColor: CGColor = UIColor.black.cgColor
    public var defaultTextFieldCornerRadius: CGFloat = 12
    
    //TextField
    public var defaultTextFieldTextColor: UIColor = .black
    public var defaultTextFieldTextFont: UIFont = UIFont.systemFont(ofSize: 12)
}
```
- - - 
### Setting
If you declare the properties of a TextField in AppDelegate as the default settings, you can use those properties consistently throughout the application. If you have different TextField properties for each page, you can use a "Settings" function to customize them for specific parts of the app. (To be added in the future)
```swift
import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //CustomTextField Config
        let shared = TextFieldConfig.shared
        shared.defaultTitleTextColor = .black
        shared.defaultTitleTextFont = .systemFont(ofSize: 16)
        shared.defaultTextFieldBorderWidth = 1.5
        shared.defaultTextFieldBorderColor = UIColor.black.cgColor
        shared.defaultTextFieldCornerRadius = 12
        shared.defaultTextFieldTextColor = .black
        shared.defaultTextFieldTextFont = .systemFont(ofSize: 12)
        
        return true
    }

  .
  .
  .

}

```
- - - 
### Use
```swift
import UIKit

import SnapKit

final class LoginView: BaseView {
    
    let idTextField = UIKitCustomTextField()
    
    let pwTextField = UIKitCustomTextField()
    
    let confirmPasswordTextField = UIKitCustomTextField()
    
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
    
    private func setCustomTextField() {
        idTextField.titleText = "ID"
        pwTextField.titleText = "Password"
        confirmPasswordTextField.titleText = "Confirm Password"
    }

    override func configureUI() {
        [idTextField, pwTextField, confirmPasswordTextField, loginButton].forEach {
            self.addSubview($0)
        }
        setCustomTextField()
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
        
        loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width / 2)
            make.height.equalTo(50)
        }
    }
}
```
- - -
### Result
<img src="https://github.com/ios-carki/Rx_Combine_PropertyWrapper/assets/44957712/f64c8271-8161-440d-8212-376e09108be1" width="300" height="600">


# Property Wrapper

https://github.com/ios-carki/Rx_Combine_PropertyWrapper/assets/44957712/360f3757-6c5e-447e-8ecc-248dfb3405d8

