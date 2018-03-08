//
//  ViewController.swift
//  FantasticView
//
//  Created by Mike Horn on 3/8/18.
//  Copyright © 2018 Mike Horn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let fantasticView = FantasticView(frame: self.view.bounds)
		self.view.addSubview(fantasticView)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}


}

