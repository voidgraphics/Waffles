//
//  Table.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import Foundation

struct DatabaseTable: Identifiable {
    let id = UUID()
    let name: String
    let columns = ["id", "title", "slug", "image", "body", "updated_at", "created_at"]
    let rows = [
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        DatabaseRow(),
        
    ]
}
