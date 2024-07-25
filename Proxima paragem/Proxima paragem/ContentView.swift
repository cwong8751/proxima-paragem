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
    @AppStorage("city") private var city: String = "macao"
    
    var body: some View {
        NavigationView{
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
                        
                        // settings button
                        NavigationLink(destination: SettingsView().navigationBarHidden(true)) {
                            Image(systemName: "gearshape")
                                .font(.title) // Adjust the size of the icon
                                .foregroundColor(.white)
                                .padding(.trailing)
                        }
                    }
                    .background(Color.blue)
                    
                    // search bar and city chooser
                    HStack {
                        NavigationLink(destination: CityChooserView().navigationBarHidden(true)) {
                            Image(city == "macao" ? "cityChooserMacau" : "cityChooserHongKong") // Replace "your_image_name" with your image name
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40) // Adjust the frame size as needed
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.yellow, lineWidth: 2) // Change the color and width of the border as needed
                                )
                                .padding(.leading)
                                .padding(.trailing)
                                .padding(.top)
                        }
                        
                        TextField("Search", text: $searchString)
                            .searchBarStyle()
                            .padding(.trailing)
                            .padding(.top)
                    }
                    .padding(.bottom)
                    
                    HStack{
                        Image(systemName: "bus") // Replace "your_image_name" with your image name
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .foregroundStyle(.yellow)
                            .frame(width: 30, height: 30)
                            .padding(.horizontal)
                        Image(systemName: "bus.doubledecker") // Replace "your_image_name" with your image name
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 30) // Adjust the frame size as needed
                            .foregroundStyle(.yellow)
                            .padding(.horizontal)
                        Image(systemName: "lightrail")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25) // Adjust the frame size as needed
                            .foregroundStyle(.yellow)
                            .padding(.horizontal)
                        Image(systemName: "tram")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.yellow)
                            .padding(.horizontal)
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
    
}

#Preview {
    ContentView()
}
