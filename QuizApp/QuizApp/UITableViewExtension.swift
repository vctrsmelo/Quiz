//
//  UITableViewExtension.swift
//  QuizApp
//
//  Created by Victor Melo on 28/01/20.
//  Copyright © 2020 Victor Melo. All rights reserved.
//

import UIKit

extension UITableView {
    func register(_ type: UITableViewCell.Type) {
        let className = String(describing: type)
        register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }
    
    func dequeueReusableCell<T>(for type: T.Type) -> T? {
        let className = String(describing: type)
        return dequeueReusableCell(withIdentifier: className) as? T
    }
}

