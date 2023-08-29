//
//  SideMenu.swift
//  Slider
//
//  Created by Ravi Shah on 29/08/23.
//

import SwiftUI

struct SideMenu: View {
    
    //TabSelection Var
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5,content: {
            //MARK: User Profile
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(50)
            //Padding Top For Close Buttons
                .padding(.top, 50)
            //MARK: Username Or Details
            VStack(alignment: .leading, spacing: 5,content: {
                
                Text("Bhavin Pathak")
                    .font (.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Text("+91 7690008729")
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.5))
            }
            )
            VStack(alignment: .leading,spacing: 5){
                //MARK: Left Side Tabs
                TabButtons(image: "home", titel: "Home", selectedTab: $selectedTab, animation: animation)
                TabButtons(image: "request", titel: "My Request", selectedTab: $selectedTab, animation: animation)
                TabButtons(image: "handshake", titel: "Society Collabration", selectedTab: $selectedTab, animation: animation)
                TabButtons(image: "support", titel: "Need Help?", selectedTab: $selectedTab, animation: animation)
                TabButtons(image: "share", titel: "Share Us", selectedTab: $selectedTab, animation: animation)
                
                Spacer()
                //MARK: Logout Button Or Bottom Actions
                VStack(){
                    Button(action:{
                        
                        //MARK: Action
                    })
                    {
                        Image("logout") // Replace "your_image_name" with your image asset name
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("Logout")
                        
                    }.bold()
                        .frame(maxWidth: 100)
                        .padding(10)
                        .cornerRadius(20)
                        .buttonStyle(PlainButtonStyle())
                    
                    
                }
                Text("Designed And Developed By \n          RND Technosoft")
                    .foregroundColor(.white.opacity(0.5))
                    .padding(.leading)
                
                
            }.padding(.leading,-15)
                .padding(.top,50)
            
        })
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .topLeading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
