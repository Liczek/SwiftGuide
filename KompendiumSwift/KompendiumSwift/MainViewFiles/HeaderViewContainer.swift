//
//  HeaderViewContainer.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class HeaderViewContainer: UIView {
	
	let searchBar: UISearchBar = {
		let bar = UISearchBar()
		bar.autocapitalizationType = .none
		bar.autocorrectionType = .no
		bar.searchBarStyle = .minimal
		bar.placeholder = "Search"
		bar.translatesAutoresizingMaskIntoConstraints = false
		return bar
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		setupUI()
		
		backgroundColor = .darkRaspberry
		
		
//This changing SearchBar text color
		UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).textColor = .sharon
//This changing SearchBar font
		UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).font = UIFont.systemFont(ofSize: 26, weight: UIFont.Weight.medium)
	}
	
	fileprivate func setupUI() {
		
		addSubview(searchBar)
		
		searchBar.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
		searchBar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
		searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	
	
}
