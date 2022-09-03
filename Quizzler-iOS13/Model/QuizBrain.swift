//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Eduardo Pelaez on 1/09/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNumber:Int = 0
    var userScore:Int = 0
    
    let quiz = [
        Question(Q: "A slug's blood is green.", A: "True"),
        Question(Q: "Approximately one quarter of human bones are in the feet.", A: "True"),
        Question(Q: "The total surface area of two human lungs is approximately 70 square metres.", A: "True"),
        Question(Q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", A: "True"),
        Question(Q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to A state funeral, because the building is considered too sacred A place.", A: "False"),
        Question(Q: "It is illegal to pee in the Ocean in Portugal.", A: "True"),
        Question(Q: "You can lead A cow down stairs but not up stairs.", A: "False"),
        Question(Q: "Google was originally called 'Backrub'.", A: "True"),
        Question(Q: "Buzz Aldrin's mother's maiden name was 'Moon'.", A: "True"),
        Question(Q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", A: "False"),
        Question(Q: "No piece of square dry paper can be folded in half more than 7 times.", A: "False"),
        Question(Q: "Chocolate affects A dog's heart and nervous system; A few ounces are enough to kill A small dog.", A: "True")
    ]
    
    mutating func checkAnswer(_ answer: String) -> Bool {
        if (answer == quiz[questionNumber].answer){
            // right
            userScore += 1
            return true;
        } else {
            // wrong
            return false;
        }
    }
    
    mutating func advance () {
        if(questionNumber + 1 < quiz.count) {
            questionNumber += 1
        } else {
            questionNumber = 0
            userScore = 0
        }
    }
    
    func getText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getUserScore() -> Int {
        return userScore
    }
}
