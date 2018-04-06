//
//  ViewController.swift
//  Chain Animations
//
//  Created by 張書涵 on 2018/4/7.
//  Copyright © 2018年 AliceChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let titleLabel = UILabel()
    let bodyLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .yellow
        
        titleLabel.backgroundColor = .red
        bodyLabel.backgroundColor = .blue
        titleLabel.numberOfLines = 0
        bodyLabel.numberOfLines = 0
        titleLabel.font = UIFont(name: "Futura", size: 40)
        titleLabel.text = "Welcome to Alice In Wonderland"
        bodyLabel.text = "Hello there! I am a girl who learn iOS by udemy and Youtube"

        
        let stackView = UIStackView(arrangedSubviews: [titleLabel,bodyLabel])//把titleLabel,bodyLabel放到stackView
        stackView.axis = .vertical//兩個Label排列方法是直的
        //stackView.frame = CGRect(x: 10, y: 10, width: 200, height: 200)
        
        view.addSubview(stackView)//要讓addSubview在centerXAnchor前，不然會crash
        
        stackView.translatesAutoresizingMaskIntoConstraints = false//讓autolayout不能用
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true//距離兩邊-100
    }
}

