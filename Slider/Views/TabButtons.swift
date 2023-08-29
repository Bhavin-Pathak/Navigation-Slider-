//
//  TabButtons.swift
//  Slider
//
//  Created by Ravi Shah on 29/08/23.
//

import SwiftUI

struct TabButtons: View {
    
    var image: String
    var titel: String
    //MARK: Selected Tab
    @Binding var selectedTab: String
    //MARK: FOR HERO ANIMATIONS
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation (.spring()) {selectedTab = titel}
        }, label: {
            HStack(spacing: 10){
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 25)
                    .cornerRadius(10)
                    .font(.title2)
                Text(titel)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == titel ? Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .frame(maxWidth: getRect().width - 150, alignment: .leading)
            
            .background(
               
                ZStack{
                    //MARK: Hero Animations
                    if selectedTab == titel{
                        Color.white
                            .opacity(selectedTab == titel ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 15))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                        
                    }
                }
                
            )
        })
    }
}

struct TabButtons_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
