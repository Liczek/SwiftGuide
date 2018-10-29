//
//  Item.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class Item {
	let name: String
	let fileName: String
	let vc: UIViewController
	
	init(name: String, fileName: String, vc: UIViewController) {
		self.name = name
		self.fileName = fileName
		self.vc = vc
	}
}
