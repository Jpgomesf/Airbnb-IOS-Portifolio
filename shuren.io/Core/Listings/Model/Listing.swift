//
//  Listing.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 20/09/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfBed: Int
    let numberOfGuests: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let title: String
    let rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    case selfCheckIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfCheckIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfCheckIn: return "Self check-in"
        case .superHost: return "Superhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfCheckIn: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests."
        }
    }

    var id: Int {
        return self.rawValue
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case alarmSystem
    case tv
    case office
    case balcony
    
    var title: String {
        switch self {
            case .pool: return "Pool"
            case .kitchen: return "Kitchen"
            case .wifi: return "Wifi"
            case .laundry: return "Laundry"
            case .alarmSystem: return "AlarmSystem"
            case .tv: return "Tv"
            case .office: return "Office"
            case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
            case .pool: return "figure.pool.swim"
            case .kitchen: return "fork.knife"
            case .wifi: return "wifi"
            case .laundry: return "washer"
            case .alarmSystem: return "shield.checkered"
            case .tv: return "tv"
            case .office: return "pencil.and.ruler.fill"
            case .balcony: return "building"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "House"
        case .townHouse: return "Town Home"
        case .villa: return "Villa"
        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
