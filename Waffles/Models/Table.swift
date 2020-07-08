//
//  Table.swift
//  Waffles
//
//  Created by Adrien Leloup on 06/07/2020.
//

import Foundation

struct Table: Identifiable {
    let id = UUID()
    let name: String
    let columns = ["title", "slug", "image", "body", "updated_at", "created_at"]
    let rows = [
        [
            "title": "First article",
            "slug": "first-article",
            "image": "firstarticle.jpg",
            "body": "Lorem ipsum dolor sit amet",
            "updated_at": "2020-05-11 12:52:34",
            "created_at": "2020-05-11 12:52:34"
        ],
        [
            "title": "Second article",
            "slug": "second-article",
            "image": "secondarticle.jpg",
            "body": "Lorem ipsum dolor sit amet",
            "updated_at": "2020-05-11 12:52:34",
            "created_at": "2020-05-11 12:52:34"
        ],
        [
            "title": "Third article",
            "slug": "third-article",
            "image": "thirdarticle.jpg",
            "body": "Lorem ipsum dolor sit amet",
            "updated_at": "2020-05-11 12:52:34",
            "created_at": "2020-05-11 12:52:34"
        ]
    ]
}
