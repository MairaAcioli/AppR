//
//  RestaurantSearch.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 24/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation

// MARK: - BusinessSearch
struct BusinessSearch: Codable {
    let businesses: [Business]
    let total: Int
}

struct Categories: Codable {
    let alias: String
    let title: String
}

struct Coordinate: Codable {
    let latitude: Double
    let longitude: Double
}

// MARK: - Business
struct Business: Codable {
    let id, alias, name: String
    let imageURL: String
    let isClosed: Bool
    let url: String
    let reviewCount: Int
    let categories: [Categories]
    let rating: Double
    let coordinates: Coordinate
    let price: String
    let location: Location
    let phone, displayPhone: String
    let distance: Double

    enum CodingKeys: String, CodingKey {
        case id, alias, name
        case imageURL = "image_url"
        case isClosed = "is_closed"
        case url
        case reviewCount = "review_count"
        case categories, rating, coordinates, price, location, phone
        case displayPhone = "display_phone"
        case distance
    }
}


// MARK: - Location
struct Location: Codable {
    let address1: String
    let address2: String?
    let address3: String
    let city: String
    let zipCode: String
    let country: String
    let state: String
    let displayAddress: [String]

    enum CodingKeys: String, CodingKey {
        case address1, address2, address3, city
        case zipCode = "zip_code"
        case country, state
        case displayAddress = "display_address"
    }
}

