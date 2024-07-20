//
//  CityChooserView.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/20.
//

import SwiftUI

struct CityChooserView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Text("Proxima Paragem")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding()
                Spacer()
            }
            .background(Color.blue)
            
            Spacer()
            Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
            Text("Macao")
                .font(.system(size: 30))
            
            Spacer()
            
            Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
            Text("Hong Kong")
                .font(.system(size: 30))
            Spacer()
        }
    }
}

#Preview {
    CityChooserView()
}
