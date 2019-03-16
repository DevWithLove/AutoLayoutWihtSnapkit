//
//  ViewController.swift
//  AutoLayoutWihtSnapkit
//
//  Created by Tony Mu on 16/03/19.
//  Copyright © 2019 Tony Mu. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = "lable1"
        label.textAlignment = .center
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.text = "lable2"
        label.textAlignment = .center
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.text = "lable3"
        label.textAlignment = .center
        return label
    }()
    
    lazy var button: UIButton = { [unowned self] in
        let button = UIButton()
        button.setTitle("Update Constraint", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.accessibilityIdentifier = HomeElements.updateButton.identifier
        button.addTarget(self, action: #selector(self.updateConstraints), for:.touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    
    private func setupViews() {
        view.addSubview(containerView)
        containerView.addSubview(label1)
        containerView.addSubview(label2)
        containerView.addSubview(label3)
        containerView.addSubview(button)
        
        containerView.snp.makeConstraints { (make) in
            //            make.top.equalTo(view)
            //            make.bottom.equalTo(view)
            //            make.left.equalTo(view)
            //            make.right.equalTo(view)
            make.top.bottom.left.right.equalTo(view.safeAreaLayoutGuide)
        }
        
        label1.snp.makeConstraints { (make) in
            //            make.width.equalTo(200)
            //            make.height.equalTo(200)
            //            make.centerX.equalTo(containerView)
            //            make.centerY.equalTo(containerView)
            make.width.height.equalTo(200)
            make.centerX.centerY.equalTo(containerView)
        }
        
        label2.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.top.equalTo(containerView.snp.top)
            make.left.equalTo(containerView.snp.left)
        }
        
        label3.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.top.equalTo(containerView)
            make.left.equalTo(label2.snp.right).offset(5)
        }
        
        button.snp.makeConstraints { (make) in
            make.centerX.equalTo(containerView)
            make.height.equalTo(30)
            make.bottom.equalTo(containerView).offset(-50)
        }
    }
    
    @objc func updateConstraints() {
        
        
        UIView.animate(withDuration: 0.5) { [unowned self] in
            self.label1.snp.updateConstraints { (make) in
                make.width.equalTo(300)
            }
            /*
             I need to call layoutIfNeeded()on the subview’s parent. If I’m animating more than one view at once, I will need to call layoutIfNeeded() on the subview’s closest common superview.
            */
            self.view.layoutIfNeeded()
        }
        
        
        UIView.animate(withDuration: 0.5) { [unowned self] in
            // remove existing and add new constraints 
            self.label2.snp.remakeConstraints({ (make) in
                make.top.equalTo(self.containerView).offset(20)
                make.left.equalTo(self.containerView).offset(20)
                make.height.width.equalTo(50)
            })
            
            self.view.layoutIfNeeded()
        }
    }
    
}

