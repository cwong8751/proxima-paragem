//
//  SettingsView.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/20.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack{
            HStack {
                Spacer()
                Text("Settings")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding()
                
                Spacer()
            }
            .background(Color.blue)
            
            
            
            Spacer()
        }
    }
}

#Preview {
    SettingsView()
}
