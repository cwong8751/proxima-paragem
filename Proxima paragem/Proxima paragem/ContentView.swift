//
//  ContentView.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/20.
//
import SwiftUI

struct ContentView: View {
    @State private var searchString = ""
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"]
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    Spacer()
                    Text("Proxima Paragem")
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                    }) {
                        Image(systemName: "gearshape")
                            .font(.title) // Adjust the size of the icon
                            .foregroundColor(.white)
                            .padding(.trailing)
                    }
                }
                .background(Color.blue)
                
                HStack {
                    Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
                        .padding(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
                    TextField("Search", text: $searchString)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.trailing)
                        .padding(.top)
                }
                .padding(.bottom)
                
                HStack{
                    Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
                        .padding(.horizontal)
                    Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        )
                        .padding(.horizontal)
                    Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        ).padding(.horizontal)
                    Image("your_image_name") // Replace "your_image_name" with your image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30) // Adjust the frame size as needed
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.yellow, lineWidth: 4) // Change the color and width of the border as needed
                        ).padding(.horizontal)
                }
                
                List(items, id: \.self) { item in
                    Text(item)
                }
                .background(Color.white)
                .scrollContentBackground(.hidden)
                .listStyle(PlainListStyle())
                .padding(.horizontal, 5)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // Add action for button here
                    }) {
                        Text("有落")
                            .font(.system(size: 35))
                            .foregroundColor(.blue)
                            .padding(.all, 40)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
