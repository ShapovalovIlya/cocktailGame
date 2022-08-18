//
//  AssemblyBuilder.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 19.08.2022.
//

import UIKit

protocol ModuleBuilderProtocol {
    func createPeopleMainVC(router: PeopleRouterProtocol) -> UIViewController
    func createCocktailMainVC(router: CocktailRouterProtocol) -> UIViewController
}

final class ModuleBuilder: ModuleBuilderProtocol {
    
    func createPeopleMainVC(router: PeopleRouterProtocol) -> UIViewController {
        let view = PeopleViewController()
        let presenter = PeopleViewPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createCocktailMainVC(router: CocktailRouterProtocol) -> UIViewController {
        let view = CocktailViewController()
        let presenter = CocktailViewPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
}
