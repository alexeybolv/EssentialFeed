//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 11.08.23.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
