//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Alexey Bolvonovich on 04/03/2024.
//

import EssentialFeed

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    
    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
