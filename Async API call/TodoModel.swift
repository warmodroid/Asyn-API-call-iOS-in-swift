//
//  TodoModel.swift
//  Async API call
//
//  Created by Mohit Agrawal on 22/04/20.
//  Copyright © 2020 Mohit Agrawal. All rights reserved.
//

import Foundation

// MARK: - Todo
struct Todo: Codable {
    let userID, id: Int
    let title: String
    let completed: Bool

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, completed
    }
}
