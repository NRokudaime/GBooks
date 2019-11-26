//
//  FeedService.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

protocol FeedService: class {
	func getFeed(completion: @escaping ((Result<FeedResponse, Error>) -> Void))
}
