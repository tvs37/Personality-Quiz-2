//
//  IntroductionScreen.swift
//  Personality Quiz
//
//  Created by Tyler Sanchez on 4/4/21.
//

import UIKit

class IntroductionScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startQuizButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "startQuiz", sender: nil)
    }
    @IBAction func unwindToIntroductionScreen (segue: UIStoryboardSegue) {}
}

