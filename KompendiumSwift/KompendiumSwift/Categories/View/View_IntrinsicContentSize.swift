//
//  View_IntrinsicContentSize.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class newView: UIView {
	override var intrinsicContentSize: CGSize {
		return CGSize(width: 100, height: 100)
	}
	
}

class View_IntrinsicContentSize: PatternViewController {
	
	let colorView = newView()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
//		navigationController?.navigationItem.title = "TEST"
		
		
		colorView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(colorView)
		colorView.backgroundColor = .raspberry
		
		colorView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		colorView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	}
}
