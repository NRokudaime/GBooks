//
//  FeedListModels.swift
//  Feed
//
//  Created by Antonov Vladislav on 20/11/2019.
//  Copyright (c) 2019 Antonov Vladislav. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

enum FeedList {
  // MARK: Use cases
	enum Something {
		struct Request {
		}
		
		struct Response {
			let items: [Item]
		}
		
		struct ViewModel {
			let viewModels: [TableViewCellAnyModel]
		}
	}
}
