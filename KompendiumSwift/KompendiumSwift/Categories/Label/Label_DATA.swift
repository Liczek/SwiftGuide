//
//  Label+DataBase.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit


class Label_DATA: NSObject {
	let items = Category(name: "UILabels",
						   items: [Item(name: "UIFont", fileName: It.Label_UIFont.rawValue, vc: Label_UIFont()),
								   Item(name: "TextColor", fileName: It.Label_TextColor.rawValue, vc: Label_TextColor())
		])
}
