//
//  CustomTabBarButton.swift
//  iOSChatApp
//
//  Created by Jiwon_Hae on 2021/12/28.
//

import SwiftUI

struct CustomTabBarButton: View {
    var isActive : Bool
    var imageName : String
    var text : String
    
    var body: some View {
        GeometryReader { geo in
            if(isActive){
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width / 4)
            }
            
            VStack(alignment: .center, spacing: 4){
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width:24, height:24)
                Text(text)
                    .font(Font.tabBar)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}
