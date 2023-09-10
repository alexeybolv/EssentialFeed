//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 10.09.23.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping(HTTPClientResult) -> Void)
}
