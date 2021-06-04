//
//  ViewController.swift
//  practice_layout
//
//  Created by kudo koki on 2021/06/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 設置したいビューを定義
        let imageView = UIImageView(image: UIImage(named: "testImage"))
        // 設置
        self.view.addSubview(imageView)
        
        // アスペクト比を維持できる範囲まで拡大
        imageView.contentMode = .scaleAspectFit
        
        // AutoLayout解除
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        // 制約を決める
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: self.view.bounds.maxX), // 横幅：画面いっぱい
            imageView.heightAnchor.constraint(equalToConstant: self.view.bounds.maxY - 100), // 縦幅：一番下から100を引く
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor), // 左よせ
            imageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20) // セーフエリアから20下
            ])
    }


}

