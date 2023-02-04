//
//  ViewController.swift
//  Table_MVVM
//
//  Created by admin1 on 4.02.23.
//

import UIKit

class ViewController: UIViewController {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "hello"
        label.textColor = .red
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16)
        ])
    }


}

