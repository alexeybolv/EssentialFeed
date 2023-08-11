//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 11.08.23.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
