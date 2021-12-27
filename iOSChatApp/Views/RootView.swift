//
//  RootView.swift
//  iOSChatApp
//
//  Created by Jiwon_Hae on 2021/12/27.
//

import SwiftUI

struct RootView: View {
    @State var selectedTab : Tabs = .contacts
    
    var body: some View {
        CustomTabBar(selectedTab: $selectedTab)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
