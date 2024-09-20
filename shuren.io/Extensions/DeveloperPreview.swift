//
//  DeveloperPreview.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 20/09/24.
//

import Foundation

class DeveloperPreview {
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfBed: 2,
            numberOfGuests: 2,
            pricePerNight: 547,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2", "listing-3"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Mayer",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 1,
            numberOfBathrooms: 2,
            numberOfBed: 1,
            numberOfGuests: 2,
            pricePerNight: 547,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-3", "listing-2", "listing-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Mayer",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 2,
            numberOfBed: 1,
            numberOfGuests: 2,
            pricePerNight: 547,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-3", "listing-2", "listing-1"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
    ]
}
