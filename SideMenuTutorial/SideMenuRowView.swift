//
//  SideMenuRowView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/21/24.
//

import SwiftUI

struct SideMenuRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "paperplane")
                .imageScale(.small)
            Text("Messages")
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .frame(height: 44)
        
    }
}

#Preview {
    SideMenuRowView()
}
