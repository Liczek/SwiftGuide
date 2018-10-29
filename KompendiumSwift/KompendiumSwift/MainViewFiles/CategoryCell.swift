//
//  CategoryCell.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
	
	let bgView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.backgroundColor = .sharon
		view.layer.cornerRadius = 10
		view.clipsToBounds = true
		view.layer.borderColor = UIColor.banana.cgColor
		view.layer.borderWidth = 2
		return view
	}()
	
	let nameLabel: PaddingLabel = {
		let label = PaddingLabel(topInset: 8, bottomInset: 8)
		label.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.semibold)
		label.translatesAutoresizingMaskIntoConstraints = false
		label.textColor = .textRaspberry
		return label
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		selectionStyle = .none
		backgroundColor = .raspberry
		
		setupUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	fileprivate func setupUI() {
		addSubview(bgView)
		addSubview(nameLabel)
		
		NSLayoutConstraint.activate([
				bgView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
				bgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
				bgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
				bgView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
				
				nameLabel.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 2),
				nameLabel.bottomAnchor.constraint(equalTo: bgView.bottomAnchor, constant: -2),
				nameLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 16),
				nameLabel.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -2)
			])
	}
}
