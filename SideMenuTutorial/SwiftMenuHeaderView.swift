//
//  SwiftMenuHeaderView.swift
//  SideMenuTutorial
//
//  Created by 김민지 on 11/20/24.
//

import SwiftUI

struct SwiftMenuHeaderView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack (alignment: .leading, spacing: 6){
                Text("Minji Kim")
                    .font(.subheadline)
                Text("test@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
        }
    }
}

#Preview {
    SwiftMenuHeaderView()
}
