//
//  ViewController.swift
//  SwiftPMPlayground
//
//  Created by hikaruhara on 2022/02/04.
//

import SamplePackage
import UIKit

class ViewController: UIViewController {
    private let button: SamplePackageButton = .init()
    
    override func loadView() {
        super.loadView()
        print("loadView")
        
        button.render("SamplePackageButton")
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

