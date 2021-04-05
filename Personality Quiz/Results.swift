//
//  Results.swift
//  Personality Quiz
//
//  Created by Tyler Sanchez on 4/4/21.
//

import UIKit

class Results: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultDefiniton: UILabel!
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

    }
    
    func calculatePersonalityResult() {
       var frequenceyOfAnswers: [AnimalType: Int] = [:]
    
        
        let responseType = responses.map { $0.type }
        
        for response in responseType {
            frequenceyOfAnswers[response] = (frequenceyOfAnswers[response] ?? 0) + 1
        }
        let frequentAnswersSorted = frequenceyOfAnswers.sorted { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        
        }
        let mostCommonAnswer = frequenceyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultLabel.text = "You are a \(mostCommonAnswer.rawValue)"
        resultDefiniton.text = mostCommonAnswer.definition
     
    }

}

