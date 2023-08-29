//
//  HomeView.swift
//  Slider
//
//  Created by Ravi Shah on 29/08/23.
//

import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: String
    
    
    // Hiding Tab Bar...
    init (selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View {
        TabView(selection: $selectedTab){
            Home().tag("Home")
            History().tag("MyRequest")
            Settings().tag("Need Help?")
            Extra().tag("Share Us")
            Logout().tag("Society Collabration")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct History: View {
    var body: some View{
        NavigationView{
            Text("History")
                .font (.largeTitle)
                .fontWeight(.heavy)
                . foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Home: View {
    var body: some View{
        NavigationView{
            Text("HOME")
                .font (.largeTitle)
                .fontWeight(.heavy)
                . foregroundColor(.primary)
                .navigationTitle("HOME")
        }
    }
}
struct Settings: View {
    var body: some View{
        NavigationView{
            Text("Settings")
                .font (.largeTitle)
                .fontWeight(.heavy)
                . foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Logout: View {
    var body: some View{
        NavigationView{
            Text("Logout")
                .font (.largeTitle)
                .fontWeight(.heavy)
                . foregroundColor(.primary)
                .navigationTitle("Logout")
        }
    }
}

struct Extra: View {
    var body: some View{
        NavigationView{
            Text("Extra")
                .font (.largeTitle)
                .fontWeight(.heavy)
                . foregroundColor(.primary)
                .navigationTitle("Extra")
        }
    }
}
