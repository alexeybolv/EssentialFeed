//
//  FeedImageDataLoaderWithFallbackCompositeTests.swift
//  EssentialAppTests
//
//  Created by Alexey Bolvonovich on 03/05/2024.
//

import XCTest
import EssentialFeed

final class FeedImageDataLoaderWithFallbackComposite: FeedImageDataLoader {
    private class Task: FeedImageDataLoaderTask {
        func cancel() {
            
        }
    }
    
    let primaryLoader: FeedImageDataLoader
    
    init(primaryLoader: FeedImageDataLoader, fallback: FeedImageDataLoader) {
        self.primaryLoader = primaryLoader
    }
    
    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> any EssentialFeed.FeedImageDataLoaderTask {
        return Task()
    }
}

final class FeedImageDataLoaderWithFallbackCompositeTests: XCTestCase {
    
    func test_init_doesNotLoadImageData() {
        let primaryLoader = LoaderSpy()
        let fallbackLoader = LoaderSpy()
        _ = FeedImageDataLoaderWithFallbackComposite(primaryLoader: primaryLoader, fallback: fallbackLoader)
        
        XCTAssertTrue(primaryLoader.loadedURLs.isEmpty, "Expected no loaded URLs in the primary loader")
        XCTAssertTrue(fallbackLoader.loadedURLs.isEmpty, "Expected no loaded URLs in the fallback loader")
    }
    
    // MARK: - Helpers
    
    private class LoaderSpy: FeedImageDataLoader {
        private var messages = [(url: URL, completion: (FeedImageDataLoader.Result) -> Void)]()
        
        var loadedURLs: [URL] {
            return messages.map { $0.url }
        }
        
        private struct Task: FeedImageDataLoaderTask {
            func cancel() {}
        }
        
        func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
            messages.append((url, completion))
            return Task()
        }
    }
}
