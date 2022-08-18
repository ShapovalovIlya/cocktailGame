//
//  Router.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var moduleBuilder: ModuleBuilderProtocol? { get set }
}

protocol PeopleRouterProtocol {
    func showGameVC()
}

protocol CocktailRouterProtocol {
    
}

typealias RouterProtocol = RouterMain & PeopleRouterProtocol & CocktailRouterProtocol

final class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var moduleBuilder: ModuleBuilderProtocol?
    
    init(navigationController: UINavigationController, moduleBuilder: ModuleBuilderProtocol) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    func initialPeopleVC() {
        guard
            let navigationController = navigationController,
            let mainViewController = moduleBuilder?.createPeopleMainVC(router: self)
        else
        { return }
        navigationController.viewControllers = [mainViewController]
        navigationController.tabBarItem = TabBarItems.people.item
    }
    
    func initialCocktailVC() {
        guard
            let navigationController = navigationController,
            let mainViewController = moduleBuilder?.createCocktailMainVC(router: self)
        else
        { return }
        navigationController.viewControllers = [mainViewController]
        navigationController.tabBarItem = TabBarItems.cocktails.item
    }
    
    func showGameVC() {
        guard
            let navigationController = navigationController,
            let gameViewController = moduleBuilder?.createGameVC(router: self)
        else
        { return }
        navigationController.pushViewController(gameViewController, animated: true)
    }
    
}
