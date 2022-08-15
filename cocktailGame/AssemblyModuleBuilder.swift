//
//  AssemblyBuilder.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

protocol AssemblyModuleBuilderProtocol {
    func createMainScreen(router: RouterProtocol) -> UIViewController
    
}

final class AssemblyModuleBuilder: AssemblyModuleBuilderProtocol {
    
    func createMainScreen(router: RouterProtocol) -> UIViewController {
        let view = MainViewController()
        let presenter = MainPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    
}
