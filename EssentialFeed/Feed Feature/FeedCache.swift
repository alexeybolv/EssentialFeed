//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 14/05/2024.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
