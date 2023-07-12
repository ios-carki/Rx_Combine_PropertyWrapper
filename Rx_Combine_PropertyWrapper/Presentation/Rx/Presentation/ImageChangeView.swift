//
//  ImageChangeView.swift
//  Rx_Combine_PropertyWrapper
//
//  Created by Carki on 2023/07/13.
//

import UIKit

final class ImageChangeView: BaseView {
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: String(Int.random(in: 1...6)))
        view.layer.cornerRadius = 12
        view.contentMode = .scaleAspectFit

        return view
    }()
    
    let changeButton: UIButton = {
        let view = UIButton()
        view.setTitle("바꾸기", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.backgroundColor = .cyan
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    override func configureUI() {
        [imageView, changeButton].forEach {
            self.addSubview($0)
        }
        
        self.backgroundColor = .white
    }
    
    override func setConstraints() {
        imageView.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.horizontalEdges.equalTo(safeAreaLayoutGuide).inset(16)
            make.height.equalTo(100)
        }
        
        changeButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(UIScreen.main.bounds.width / 2)
            make.height.equalTo(50)
        }
    }
    
    
}
