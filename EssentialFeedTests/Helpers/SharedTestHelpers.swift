//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Alexey Bolvonovich on 19/01/2024.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "www.youtube.com")!
}

func anyData() -> Data {
    Data("any data".utf8)
}
