//
//  MainTabView.swift
//  shuren.io
//
//  Created by Joao Pedro Gomes Ferreira on 14/09/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }

            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
