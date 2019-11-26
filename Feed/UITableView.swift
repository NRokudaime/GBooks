//
//  CommonPresentationLogic.swift
//  Feed
//
//  Created by Antonov Vladislav on 21/11/2019.
//  Copyright © 2019 Antonov Vladislav. All rights reserved.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(withCell cellType: T.Type, for indexPath: IndexPath) -> T {
        let identifier = cellType.cellIdentifier
        guard let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? T else {
            fatalError("\(identifier) isn't registered")
        }
        return cell
    }
        
    func register<T: UITableViewCell>(cells: [T.Type], fromBundle bundle: Bundle = Bundle.main) {
        for cell in cells {
            let identifier = String(describing: cell.cellIdentifier)
            if let _ = bundle.url(forResource: identifier, withExtension: "nib") {
                let nib = UINib(nibName: identifier, bundle: bundle)
                register(nib, forCellReuseIdentifier: identifier)
            } else {
                register(cell, forCellReuseIdentifier: identifier)
            }
        }
    }
}

extension UITableView {
    func dequeueReusableCell(withModel model: TableViewCellAnyModel, for indexPath: IndexPath) -> UITableViewCell {
        let identifier = String(describing: type(of: model).cellAnyType)
        let cell = dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        model.configureAny(cell: cell)
        return cell
    }
    
}
