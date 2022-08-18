//
//  TabBarViewController.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

enum TabBarItems {
   case people
   case cocktails
    
    var index: Int {
        switch self {
        case .people:
            return 0
        case .cocktails:
            return 1
        }
    }
    
    var item: UITabBarItem {
        switch self {
        case .people:
            return UITabBarItem(title: "People", image: UIImage(systemName: "person.3.fill"), tag: index)
        case .cocktails:
            return UITabBarItem(title: "Cocktails", image: UIImage(systemName: "list.star"), tag: index)
        }
    }
   
}

final class TabBarViewController: UITabBarController {
    
    required init(viewControllers: [UIViewController]) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = viewControllers
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }

}

//MARK: - private extension
private extension TabBarViewController {
    
    func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.unselectedItemTintColor = .lightGray
        tabBar.tintColor = .black
    }
    
}


