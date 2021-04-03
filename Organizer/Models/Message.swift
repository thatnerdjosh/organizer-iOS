//
//  Message.swift
//  Organizer
//
//  Created by Josh Santos on 3/4/2564 BE.
//

struct Message: Hashable, Identifiable {
    enum Sender: Hashable {
        case me
        case other(named: String)
    }
    
    let id: Int
    let sender: Sender
    let content: String
}
