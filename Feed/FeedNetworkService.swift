//
//  FeedNetworkService.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

import Foundation

final class FeedNetworkService: FeedService {
	func getFeed(completion: @escaping ((Result<FeedResponse, Error>) -> Void)) {
		guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=king") else {
			completion(.failure(NSError(domain: "URL Error", code: 1, userInfo: nil)))
			return
		}
		let request = URLRequest(url: url)
		URLSession.shared.dataTask(with: request) { (data, _, error) in
			guard let data = data, error == nil else {
				completion(.failure(NSError(domain: "Request Error", code: 1, userInfo: nil)))
				return
			}
			do {
				let feed = try JSONDecoder().decode(FeedResponse.self, from: data)
				completion(.success(feed))
			} catch let error {
				completion(.failure(error))
			}
				
		}.resume()
	}
}
