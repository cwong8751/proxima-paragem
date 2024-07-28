//
//  macaoBusInfo.swift
//  Proxima paragem
//
//  Created by Carl on 2024/7/28.
//

import Foundation

struct Stop: Codable {
    let code: String
    let nameCht: String
    let namePor: String
    let parentCode: String
    let lat: Double
    let lng: Double
    let seq: Int
}

struct Direction: Codable {
    let code: String
    let nameCht: String
    let namePor: String
    let stops: [Stop]
}

struct Agency: Codable {
    let nameCht: String
    let namePor: String
    let phone: String
    let website: String
}

struct Route: Codable {
    let agencies: [Agency]
    let code: String
    let nameCht: String
    let namePor: String
    let directions: [Direction]
    let type: String
}

// parse routes to json
func readRoutes(from filename: String, in dir: String) throws -> [Route] {
    // Define the file path for the JSON data
    print(Bundle.main.bundlePath)
    print(filename)
    print(dir)
    
    if let resourcePath = Bundle.main.resourcePath {
        let fullPath = (resourcePath as NSString).appendingPathComponent(dir)
        print("Looking for file at path: \(fullPath)/\(filename).json")
    }
    
    // Construct the file path for the JSON data
    //FIXME: doesn't find json file location for some reason
        guard let fileURL = Bundle.main.url(forResource: filename, withExtension: "json", subdirectory: dir) else {
            fatalError("JSON file not found in \(dir)")
        }
    
    do {
        // Read the file content
        let data = try Data(contentsOf: fileURL)

        // Decode the JSON data into an array of Route objects
        let routes = try JSONDecoder().decode([Route].self, from: data)
        
        return routes
    } catch {
        throw error
    }
}
