//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Eduardo Pelaez on 31/08/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(Q: String, A: String) {
        text = Q;
        answer = A
    }
}
