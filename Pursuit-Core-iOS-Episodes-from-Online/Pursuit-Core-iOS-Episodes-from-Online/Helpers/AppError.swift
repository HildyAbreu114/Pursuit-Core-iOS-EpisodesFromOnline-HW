//
//  errorCode.swift
//  Pursuit-Core-iOS-Episodes-from-Online
//
//  Created by hildy abreu on 9/11/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import Foundation

public enum AppError: Error {
    case badURL(String)
    case networkError(Error)
    case noResponse
    case decodingError(Error)
    case badStatusCode(String)
    case badMimeType(String)
    
    public func errorMessage() -> String {
        switch self {
        case .badURL(let message):
            return "badURL: \(message)"
        case .networkError(let error):
            return error.localizedDescription
        case .noResponse:
            return "no network response"
        case .decodingError(let error):
            return "decoding error: \(error)"
        case .badStatusCode(let message):
            return "bad status code: \(message)"
        case .badMimeType(let mimeType):
            return "bad mime type: \(mimeType)"
        }
    }
}
