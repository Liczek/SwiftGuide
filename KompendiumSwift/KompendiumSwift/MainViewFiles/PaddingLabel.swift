//
//  PaddingLabel.swift
//  KompendiumSwift
//
//  Created by Paweł Liczmański on 28/10/2018.
//  Copyright © 2018 Paweł Liczmański. All rights reserved.
//

import UIKit

class PaddingLabel: UILabel {
	
	var topInset: CGFloat = 20
	var bottomInset: CGFloat = 40

	required init(topInset: CGFloat, bottomInset: CGFloat) {
		self.topInset = topInset
		self.bottomInset = bottomInset
		super.init(frame: CGRect.zero)
	}
	
	override func drawText(in rect: CGRect) {
		let insetes = UIEdgeInsets(top: topInset, left: 0, bottom: bottomInset, right: 0)
		super.drawText(in: rect.inset(by: insetes))
	}
	
	override var intrinsicContentSize: CGSize {
		let size = super.intrinsicContentSize
		return CGSize(width: size.width, height: size.height + topInset + bottomInset)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
