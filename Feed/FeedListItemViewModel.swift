//
//  FeedListItemViewModel.swift
//  Feed
//
//  Created by Antonov Vladislav on 26/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

struct FeedListItemViewModel: TableViewCellModel {
	
	let title: String
	let subtitle: String
	let link: String
	var action: (() -> Void)?
	
	init(title: String, subtitle: String, link: String) {
		self.title = title
		self.subtitle = subtitle
		self.link = link
		action = nil
	}
	
	func configure(cell: FeedListItemCell) {
		cell.titleLabel.text = title
		cell.subtitleLabel.text = subtitle
	}
}
