//
//  FantasticView.swift
//  FantasticView
//
//  Created by Mike Horn on 3/8/18.
//  Copyright © 2018 Mike Horn. All rights reserved.
//

import Foundation
import UIKit

class FantasticView: UIView {

	var colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
	var colorCounter = 0
	//This method will be called when a frame is passed to the constructor of FantasticView. We will call our color changing function here.
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: { (timer) in
			UIView.animate(withDuration: 2.0) {
				self.layer.backgroundColor = self.colors[self.colorCounter % 6].cgColor
				self.colorCounter += 1
			}
		})
		
		scheduledColorChanged.fire()
	}
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}

	
}
