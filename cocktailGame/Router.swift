//
//  Router.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

protocol RouterProtocol {
    func createPeopleMainScreen() -> UIViewController
    func createCocktailMainScreen() -> UIViewController
    func showGameScreen()
}

final class Router: RouterProtocol {
    
    func createPeopleMainScreen() -> UIViewController {
        let view = PeopleViewController()
        let presenter = PeopleViewPresenter(view: view, router: self)
        view.presenter = presenter
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem = TabBarItems.people.item
        return navigationController
    }
    
    func showGameScreen() {
        let view = GameViewController()
        let presenter = GameViewPresenter(view: view, router: self)
        view.presenter = presenter
        let navigationController = UINavigationController()
        navigationController.pushViewController(view, animated: true)
    }
    
    
    func createCocktailMainScreen() -> UIViewController {
        let view = CocktailViewController()
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem = TabBarItems.cocktails.item
        return navigationController
    }
    
}
