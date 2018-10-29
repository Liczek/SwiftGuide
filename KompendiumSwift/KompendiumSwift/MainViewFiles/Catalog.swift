//
//  Catalog.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class Category {
	let name: String
	let items: [Item]?
	
	init(name: String, items: [Item]?) {
		self.name = name
		self.items = items
	}
}
