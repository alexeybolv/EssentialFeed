//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 11.08.23.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
