//
//  BookModel.swift
//  NYTBestsellers
//
//  Created by Kevin Waring on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct Books: Codable {
    let results: [Book]
}
struct  Book: Codable {
    let display_name: String
    let weeks_on_list: Int
    let amazon_product_url: URL
    let book_details: [Details]
}

struct Details: Codable{
    let title: String
    let description: String
    let author: String
    let primary_isbn10: String
}
