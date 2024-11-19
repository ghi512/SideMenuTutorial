//
//  ContentView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false // 사이드 메뉴 보일지 여부를 저장하는 변수 선언 - 사이드바 내용은 토글로
        // 👾 이 변수를 꼭 private로 해야하나?
    
    var body: some View {
        NavigationStack { // 상단 네비게이션바 스택
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .navigationTitle("Home") // 네비게이션 타이틀
            .navigationBarTitleDisplayMode(.inline) // 네비게이션 안의 인라인으로 설정
            .toolbar { // 사이드 메뉴 누르는 버튼
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showMenu.toggle() // 위에서 선언한 showMenu에 toggle 액션 설정?
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
