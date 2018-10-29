//
//  MainView.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	
	
	var loadedDATA = [Label_DATA().items, View_DATA().items]
	
	
	
	var dataBase = [Category]()
	
	let cellID = "cellID"
	let searchBarHeight: CGFloat = 60
	
	let headerView = HeaderViewContainer()
	let tableView = UITableView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		loadedDATA.forEach { (category) in
			dataBase.append(category)
		}
		
		setNavigationBar()
		setUI()
		configureHeaderView()
		setTableView()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataBase.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CategoryCell
		let category = dataBase[indexPath.row]
		cell.nameLabel.text = category.name
		return cell
	}
	
	func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
		return UIView()
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let catalog = dataBase[indexPath.row]
		let name = catalog.name
		if catalog.items != nil {
			guard let items = catalog.items else { return }
			createNewViewController(catalogName: name, withItems: items)
		}
	}
	
	fileprivate func setUI() {
		tableView.register(CategoryCell.self, forCellReuseIdentifier: cellID)
		tableView.separatorStyle = .none
		
		view.backgroundColor = .raspberry
		view.addSubview(headerView)
	}
	
	fileprivate func configureHeaderView() {
		headerView.translatesAutoresizingMaskIntoConstraints = false
		headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
		headerView.heightAnchor.constraint(equalToConstant: searchBarHeight).isActive = true
		headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
	}
	
	fileprivate func setTableView() {
		view.addSubview(tableView)
		
		tableView.delegate = self
		tableView.dataSource = self
		
		tableView.backgroundColor = .raspberry
		
		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
		tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
		tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
	}
	
	fileprivate func setNavigationBar() {
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(handleAdd))
		navigationItem.title = "Kompendium"
		navigationController?.navigationBar.prefersLargeTitles = true
	}
	
	@objc fileprivate func handleAdd() {
		let createNewcategoryController = CreateNewCategoryController()
		navigationController?.pushViewController(createNewcategoryController, animated: true)
	}
	
	fileprivate func createNewViewController(catalogName: String, withItems: [Item]) {
		let newViewController = NewViewController()
		newViewController.items = withItems
		newViewController.catalogName = catalogName
		navigationController?.pushViewController(newViewController, animated: true)
		
	}
}
