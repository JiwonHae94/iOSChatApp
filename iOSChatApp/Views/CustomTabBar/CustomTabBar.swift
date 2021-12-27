//
//  CustomTabBar.swift
//  iOSChatApp
//
//  Created by Jiwon_Hae on 2021/12/28.
//

import SwiftUI

enum Tabs: Int{
    case chats = 0
    case contacts = 1
}

struct CustomTabBar: View {
    @Binding var selectedTab : Tabs
    
    var body: some View {
        HStack(alignment: .center){
            Button {
                // Switch to chats
                selectedTab = .chats
            } label: {
                CustomTabBarButton(isActive: selectedTab == .chats, imageName: "bubble.left", text: "Chats")
            }
            .tint(Color("icons-secondary"))
            
            Button {
                // create new chat
            } label: {
                GeometryReader { geo in
                    VStack(alignment: .center, spacing: 4){
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:32, height:32)
                        Text("New Chat")
                            .font(Font.tabBar)
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .tint(Color("icons-primary"))
            
            Button {
                // Switch to contacst
                selectedTab = .contacts
            } label: {
                CustomTabBarButton(isActive: selectedTab == .contacts, imageName: "person", text: "Contacts")
            }
            .tint(Color("icons-secondary"))
        }
        .frame(height: 82)
        
    }
}
