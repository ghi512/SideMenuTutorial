//
//  SideMenuView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/20/24.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
            }
        }
    }
}

#Preview {
    SideMenuView(isShowing: .constant(false))
}
