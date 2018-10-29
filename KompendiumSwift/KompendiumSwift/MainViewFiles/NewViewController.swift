//
//  newViewController.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class NewViewController: UITableViewController {
	
	var items: [Item]?
	let cellID = "cellID"
	var catalogName = ""
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupUI()
	}
	
	func pushToNewViewController(item: Item) {
		switch item.fileName {
		case It.Label_UIFont.rawValue:
			createVC(item: item)
		case It.Label_TextColor.rawValue:
			createVC(item: item)
		case It.View_IntrinsicContentSize.rawValue:
			createVC(item: item)
		default:
			createVC(item: Item(name: "no name", fileName: "no file name", vc: UIViewController()))
		}
	}
	
	func createVC(item: Item) {
		let vc = item.vc
		let itemName = item.name
		navigationController?.pushViewController(vc, animated: true)
		navigationController?.navigationItem.title = itemName
	}
	
	//MARK:- TableView
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items?.count ?? 0
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoryCell
		let item = items?[indexPath.row]
		cell.nameLabel.text = item?.name
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let optionalItem = items?[indexPath.row]
		guard let item = optionalItem else { return }
		pushToNewViewController(item: item)
	}
	
	fileprivate func setupUI() {
		tableView.register(CategoryCell.self, forCellReuseIdentifier: cellID)
		
		navigationItem.title = catalogName
		
		view.backgroundColor = .raspberry
		tableView.backgroundColor = .raspberry
		tableView.separatorStyle = .none
	}
}
