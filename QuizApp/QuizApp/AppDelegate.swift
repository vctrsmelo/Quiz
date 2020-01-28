//
//  AppDelegate.swift
//  QuizApp
//
//  Created by Victor Melo on 25/11/19.
//  Copyright © 2019 Victor Melo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let viewController = ResultsViewController(summary: "You got 1/2 correct", answers: [
            PresentableAnswer(question: "Question??", answer: "Yeah!", wrongAnswer: nil),
            PresentableAnswer(question: "Another question??", answer: "Hell yeah!", wrongAnswer: "Hell no!")
        ])
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        return true
    }

}

