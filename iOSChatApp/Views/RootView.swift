//
//  ContentView.swift
//  iOSChatApp
//
//  Created by Jiwon_Hae on 2021/12/27.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .font(Font.custom("", size:14))
    }
    
    init(){
        for family in UIFont.familyNames {
            print(family)
            for fontname in UIFont.fontNames(forFamilyName: family){
                print("--\(fontname)")
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
