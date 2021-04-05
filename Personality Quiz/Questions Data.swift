//
//  Questions Data.swift
//  Personality Quiz
//
//  Created by Tyler Sanchez on 4/4/21.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, range
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are very outgoing, loyal, happy, and brave."
        case .cat:
            return "You are always tired, socislable, curious, and clean."
        case .rabbit:
            return "You are sweet, kind, and cute towards others "
        case .turtle:
            return "You are smart, wise, slow, knowledgable, and patient"
        }
    }
}
