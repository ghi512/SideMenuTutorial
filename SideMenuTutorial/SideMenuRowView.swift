//
//  SideMenuRowView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/21/24.
//

import SwiftUI

struct SideMenuRowView: View {
    let option: SideMenuOptionModel
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            Text(option.title)
                .font(.subheadline)
            Spacer()
        }
        .padding(.leading)
        .frame(height: 44)
        
    }
}

#Preview {
    SideMenuRowView(option: .dashboard)
}
