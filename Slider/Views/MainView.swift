//
//  MainView.swift
//  Slider
//
//  Created by Ravi Shah on 29/08/23.
//

import SwiftUI

struct MainView: View {
    
    
    @State var selectedTab = "Home"
    //MARK: Animaation
    @Namespace var animation
    //MARK: Toggle Button
    @State var showMenu = false
    
    var body: some View {
        ZStack{
            Color("blue")
                .ignoresSafeArea()
            
            SideMenu(selectedTab: $selectedTab)
            
            ZStack{
                // two background Cards...
                Color.white
                .opacity (0.5)
                .shadow(color: Color.black.opacity(0.7),radius: 5,x: -5,y: 0)
                .cornerRadius (showMenu ? 15 : 0)
                .offset(x: showMenu ? -25 : 0)
                .padding(.vertical, 30)
                
                Color.white
                .opacity (0.5)
                .shadow(color: Color.black.opacity(0.7),radius: 5,x: -5,y: 0)
                .cornerRadius (showMenu ? 15 : 0)
                .offset(x: showMenu ? -50 : 0)
                .padding(.vertical, 60)
                
                
                HomeView(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
                
            }// Scaling And Moving The View...
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(
                // Menu Button...
                Button(action: {
                    withAnimation (.spring()) {
                        showMenu.toggle()
                    }
                }, label: {
                    //MARK: Drawer Button
                    
                    VStack(spacing: 5){
                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30,height: 3)
                            .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                            .offset(x: showMenu ? 2 : 0, y: showMenu ? 9 : 0)
                        
                        VStack(spacing: 5){
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30,height: 3)
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30,height: 3)
                                .offset(y: showMenu ? -8 : 0)
                        }
                        .rotationEffect(.init(degrees: showMenu ? 50 : 0))
                      
                    }
                    
                }
                      )
                .padding()
                ,alignment: .topLeading
            )
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


// Extending View To get Screen Size...
extension View{
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
