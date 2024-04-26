//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Alexey Bolvonovich on 26/04/2024.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
