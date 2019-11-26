//
//  CommonPresentationLogic.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

protocol DisplayLogicHolder {
	var displayLogic: CommonDisplayLogic? { get }
}

protocol CommonPresentationLogic {
	func present(error: Error)
}

extension CommonPresentationLogic where Self: DisplayLogicHolder {
	func present(error: Error) {
		displayLogic?.display(error: error)
	}
}
