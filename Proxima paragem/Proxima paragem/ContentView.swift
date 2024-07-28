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
    
    // test
    private var data  = Array(1...20)
    private let fixedColumn = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
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
                    
                    // transportation type bar
                    if(city == "hongkong") {
                        HStack{
                            Image(systemName: "bus") // Replace "your_image_name" with your image name
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundStyle(.green)
                                .frame(width: 30, height: 30)
                                .padding(.horizontal)
                            Image(systemName: "bus.doubledecker")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30) // Adjust the frame size as needed
                                .foregroundStyle(.brown)
                                .padding(.horizontal)
                            Image(systemName: "lightrail")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.yellow)
                                .padding(.horizontal)
                            Image(systemName: "tram")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.red)
                                .padding(.horizontal)
                        }
                    }
                    else{
                        HStack{
                            Image(systemName: "bus")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundStyle(.gray)
                                .frame(width: 30, height: 30)
                                .padding(.horizontal)
                            Image(systemName: "bus")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundStyle(.blue)
                                .frame(width: 30, height: 30)
                                .padding(.horizontal)
                            Image(systemName: "bus")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .foregroundStyle(.orange)
                                .frame(width: 30, height: 30)
                                .padding(.horizontal)
                        }
                        
                    }
                    
                    
                    // bus information button
                    //                    List(items, id: \.self) { item in
                    //                        Text(item)
                    //                    }
                    //                    .background(Color.white)
                    //                    .scrollContentBackground(.hidden)
                    //                    .listStyle(PlainListStyle())
                    //                    .padding(.horizontal, 5)
                    
                    ScrollView{
                        LazyVGrid(columns: fixedColumn, spacing: 10) {
                            ForEach(data, id: \.self) { item in
                                ZStack{
                                    Image(systemName: "bus")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundStyle(.orange)
                                        .frame(width: 60, height: 60)
                                        .padding(.horizontal)
                                    
                                    Text(String(item))
                                        .frame(width: 80, height: 80, alignment: .center)
                                        .foregroundColor(.black)
                                        .font(.title)
                                }
                            }
                        }
                    }
                }
                
                // get off button
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
        .onAppear{
            // get routes
            if(city == "hongkong"){
                // we don't have data for hk yet
            }
            else{
                do{
                    let routes = try readRoutes(from: "routes", in: "/data/macao")
                }
                catch {
                    print("Failed to parse JSON: \(error.localizedDescription)")
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
