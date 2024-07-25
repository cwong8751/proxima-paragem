//
//  SettingsView.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/20.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the view
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title) // Adjust the size of the icon
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                
                Spacer()
                
                Text("Settings")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding()
                
                Spacer()
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
