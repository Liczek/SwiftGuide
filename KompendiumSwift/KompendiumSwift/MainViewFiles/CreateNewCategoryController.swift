//
//  CreateNewCategoryController.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class CreateNewCategoryController: UIViewController {
	
	let categoryNameLabel: UILabel = {
		let label = UILabel()
		label.text = "Category name"
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
		return label
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .raspberry
		setupViews()
	}
	
	fileprivate func setupViews() {
		
		view.addSubview(categoryNameLabel)
		NSLayoutConstraint.activate([
			categoryNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
			categoryNameLabel.heightAnchor.constraint(equalToConstant: 26),
			categoryNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
			categoryNameLabel.widthAnchor.constraint(equalToConstant: 200),
			])
	}
}
