//
//  View_DATA.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit


class View_DATA: NSObject {
	let items = Category(name: "UIView",
						  items: [Item(name: "Intrinsic Content Size", fileName: It.View_IntrinsicContentSize.rawValue, vc: View_IntrinsicContentSize())
		])
}
