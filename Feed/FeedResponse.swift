//
//  FeedResponse.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

struct FeedResponse: Codable {
	let items: [Item]
}

struct Item: Codable {
	let volumeInfo: VolumeInfo
}

struct VolumeInfo: Codable {
	let title: String
	let authors: [String]
	let description: String
	let canonicalVolumeLink: String
	
	enum CodingKeys: String, CodingKey {
		case title, authors
		case description, canonicalVolumeLink
	}
}
