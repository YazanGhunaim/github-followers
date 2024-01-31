//
//  ErrorMessage.swift
//  GHfollowers
//
//  Created by Yazan Ghunaim on 1/31/24.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again later."
    case invalidData = "The data received from the server was invalid. Please try again."
}
