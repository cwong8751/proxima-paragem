//
//  CityChooserView.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/20.
//

import SwiftUI

struct CityChooserView: View {
    
    @AppStorage("city") private var city: String = "macao"
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss() // Dismiss the view
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title) // Adjust the size of the icon
                        .foregroundColor(.white)
                        .padding(.leading)
                }
                
                Spacer()
                
                Text("Proxima Paragem")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding()
                
                Spacer()
                Spacer()
            }
            .background(Color.blue)
            
            Spacer()
            // the macao button
            Button(action: {
                city = "macao"
            }) {
                VStack{
                    Image("cityChooserMacau") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
                    Text("Macao")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                }
            }
            
            Spacer()
            
            // the hong kong button
            Button(action: {
                city = "hongkong"
            }) {
                VStack{
                    Image("cityChooserHongKong") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
                    Text("Hong Kong")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    CityChooserView()
}
