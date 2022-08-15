//
//  TabBarViewController.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

final class TabBarViewController: UITabBarController {

    private enum TabBarItems {
        case people
        case cocktails
        
        var title: String {
            switch self {
            case .people:
                return "People"
            case .cocktails:
                return "Cocktails"
            }
        }
        
        var icon: String {
            switch self {
            case .people:
                return "person.3.fill"
            case .cocktails:
                return "list.star"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

private extension TabBarViewController {
    
}
