//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Alexey Bolvonovich on 26/10/2023.
//

import XCTest

class LocalFeedLoader {
    let store: FeedStore
    
    init(store: FeedStore) {
        self.store = store
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

final class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        let _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
