//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 11/10/2024.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
