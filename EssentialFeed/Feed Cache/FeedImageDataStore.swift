//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 28/04/2024.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
