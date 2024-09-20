//
//  ExploreService.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 20/09/24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview().listings
    }
}
