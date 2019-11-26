//
//  TableViewCellModel.swift
//  Feed
//
//  Created by Antonov Vladislav on 26/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

import UIKit

protocol TableViewCellAnyModel {
	var rowHeight: CGFloat { get }
	static var cellAnyType: UITableViewCell.Type { get }
	func configureAny(cell: UITableViewCell)
	var action: (() -> Void)? { get set }
}

protocol TableViewCellModel: TableViewCellAnyModel {
	associatedtype CellType: UITableViewCell
	func configure(cell: CellType)
}

extension TableViewCellModel {
	static var cellAnyType: UITableViewCell.Type {
		return CellType.self
	}
	
	func configureAny(cell: UITableViewCell) {
		if let cell = cell as? CellType {
			configure(cell: cell)
		} else {
			assertionFailure("Wrong usage")
		}
	}
	
	var rowHeight: CGFloat {
		return UITableView.automaticDimension
	}
}
