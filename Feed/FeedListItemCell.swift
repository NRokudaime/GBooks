//
//  FeedListItemCell.swift
//  Feed
//
//  Created by Antonov Vladislav on 26/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

import UIKit

final class FeedListItemCell: UITableViewCell {
	lazy var titleLabel: UILabel = {
		let label = UILabel(frame: .zero)
		label.translatesAutoresizingMaskIntoConstraints = false
		label.setContentCompressionResistancePriority(.required, for: .vertical)
		label.lineBreakMode = .byWordWrapping
		label.numberOfLines = 0
		return label
	}()
	
	lazy var subtitleLabel: UILabel = {
		let label = UILabel(frame: .zero)
		label.translatesAutoresizingMaskIntoConstraints = false
		label.lineBreakMode = .byWordWrapping
		label.numberOfLines = 0
		label.font = UIFont.systemFont(ofSize: 12, weight: .light)
		label.textColor = UIColor.lightGray
		return label
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		configureUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func prepareForReuse() {
		super.prepareForReuse()
		titleLabel.text = nil
		subtitleLabel.text = nil
	}
}

private extension FeedListItemCell {
	
	func configureUI() {
		contentView.layoutMargins = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
		contentView.addSubview(titleLabel)
		contentView.addSubview(subtitleLabel)
		NSLayoutConstraint.activate([titleLabel.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
									 titleLabel.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
									 titleLabel.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
									 subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
									 subtitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
									 subtitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
									 subtitleLabel.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor)])
	}
}
