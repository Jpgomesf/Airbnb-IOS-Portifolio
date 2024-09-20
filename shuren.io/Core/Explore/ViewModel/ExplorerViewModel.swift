//
//  ExplorerViewModel.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 20/09/24.
//

import Foundation

class ExplorerViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            
        } catch {
            print("DEBUG: Failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
