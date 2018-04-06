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
    
    fileprivate func setupLabels() {
        //titleLabel.backgroundColor = .red
        //bodyLabel.backgroundColor = .blue
        titleLabel.numberOfLines = 0
        bodyLabel.numberOfLines = 0
        titleLabel.font = UIFont(name: "Futura", size: 40)
        titleLabel.text = "Alice in wonderland"
        bodyLabel.text = "welcome to the tea party alice in wonderland! I am a girl who learn iOS by udemy and Youtube"
    }
    
    fileprivate func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [titleLabel,bodyLabel])//把titleLabel,bodyLabel放到stackView
        stackView.axis = .vertical//兩個Label排列方法是直的
        stackView.spacing = 10
        
        view.addSubview(stackView)//要讓addSubview在centerXAnchor前，不然會crash
        
        stackView.translatesAutoresizingMaskIntoConstraints = false//讓autolayout不能用
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -100).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        setupStackView()//距離兩邊-100
        
        //fun animations
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTapAnimations)))
    }
    @objc fileprivate func handleTapAnimations(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.titleLabel.transform = CGAffineTransform(translationX: -30, y: 0)//titleLable往左30
            
            
            
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.titleLabel.alpha = 0
                self.titleLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
                
                
        })
    }
        UIView.animate(withDuration: 0.5, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.bodyLabel.transform = CGAffineTransform(translationX: -30, y: 0)//titleLable往左30
            
            
            
        }) { (_) in
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                self.bodyLabel.alpha = 0
                self.bodyLabel.transform = self.titleLabel.transform.translatedBy(x: 0, y: -200)
                
                
            })
        }
}
}
