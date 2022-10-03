//
//  LoveDataManager.swift
//  Love
//
//  Created by Megan Dukek on 10/2/22.
//

import Foundation

struct Love: Codable {
    let definition: String

    static var defOne: Love? {
          Love.fromJSON(named: "definition")
 }
}

private func readLocalFile(forName name: String) -> Data? {
    do {
        if let bundlePath = Bundle.main.path(forResource: name,
                                             ofType: "json"),
            let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            return jsonData
        }
    } catch {
        print(error)
    }
    
    return nil
}

private func parse(jsonData: Data) {
    do {
        let decodedData = try JSONDecoder().decode(Love.self,
            from: jsonData)
        
        print("Definition: ", Love.definition)
        print("===================================")
    } catch {
        print("decode error")
    }
}

if let localData = self.readLocalFile(forName: "data") {
    self.parse(jsonData: localData)
}
