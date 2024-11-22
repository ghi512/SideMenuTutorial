//
//  ContentView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack { // 상단 네비게이션바 스택
            ZStack {
                TabView(selection: $selectedTab) {
                    Text("Dashboard")
                        .tag(0)
                    Text("Performance")
                        .tag(1)
                    Text("Profile")
                        .tag(2)
                    Text("Search")
                        .tag(3)
                    Text("Notifications")
                        .tag(4)
                }
                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home") // 네비게이션 타이틀
            .navigationBarTitleDisplayMode(.inline) // 네비게이션 안의 인라인으로 설정
            .toolbar { // 사이드 메뉴 누르는 버튼
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle() // 위에서 선언한 showMenu에 toggle 액션 설정. true <-> false 변경해줌.
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
