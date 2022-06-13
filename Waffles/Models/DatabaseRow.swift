//
//  DatabaseRow.swift
//  Waffles
//
//  Created by Adrien Leloup on 13/06/2022.
//

import Foundation

struct DatabaseRow: Identifiable {
    let id = UUID()
    let values = [
        [
            "id": "1",
            "title": "First article",
            "slug": "first-article",
            "image": "firstarticle.jpg",
            "body": "Lorem ipsum dolor sit amet",
            "updated_at": "2020-05-11 12:52:34",
            "created_at": "2020-05-11 12:52:34"
        ]
    ]
}

