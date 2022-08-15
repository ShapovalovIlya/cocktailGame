//
//  Router.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyModuleBuilder: AssemblyModuleBuilder? { get set }
}

protocol RouterProtocol: RouterMain {
    func initialViewController()
}

final class Router: RouterProtocol {
    
    var navigationController: UINavigationController?
    var assemblyModuleBuilder: AssemblyModuleBuilder?
    
    init(navigationController: UINavigationController, assemblyModuleBuilder: AssemblyModuleBuilder) {
        self.navigationController = navigationController
        self.assemblyModuleBuilder = assemblyModuleBuilder
    }
    
    func initialViewController() {
        guard let navigationController = navigationController else { return }
        guard let mainViewController = assemblyModuleBuilder?.createMainScreen(router: self) else { return }
        navigationController.viewControllers = [mainViewController]
    }
    
    
    
    
}
