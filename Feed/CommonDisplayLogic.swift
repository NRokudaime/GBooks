//
//  CommonDisplayLogic.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

import UIKit

protocol CommonDisplayLogic: class {
	func display(error: Error)
}

extension CommonDisplayLogic where Self: UIViewController {
	func display(error: Error) {
		DispatchQueue.main.async { [weak self] in
			let alert = UIAlertController(title: nil, message: error.localizedDescription, preferredStyle: .alert)
			alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
			self?.present(alert, animated: true, completion: nil)
		}
	}
}
