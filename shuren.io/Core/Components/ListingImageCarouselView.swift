//
//  ListingImageCarouselView.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 27/08/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            TabView {
                ForEach(listing.imageURLs, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .tabViewStyle(.page)
        }
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview().listings[0])
}
