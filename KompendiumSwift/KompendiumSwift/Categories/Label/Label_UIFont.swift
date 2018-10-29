//
//  Label+UIFont.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class Label_UIFont: PatternViewController {
	
	let label: UILabel = {
		let label = UILabel()
		label.text = "Test text"
		label.font = UIFont.boldSystemFont(ofSize: 22)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.addSubview(label)
		
		label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
	}
}
