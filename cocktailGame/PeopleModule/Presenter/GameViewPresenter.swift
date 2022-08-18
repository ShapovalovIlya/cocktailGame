//
//  GameViewPresenter.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 18.08.2022.
//

import Foundation

protocol GameViewProtocol: AnyObject {
    
}

protocol GameViewPresenterProtocol {
    init(view: GameViewProtocol, router: PeopleRouterProtocol)
}

final class GameViewPresenter: GameViewPresenterProtocol {
    
    weak var view: GameViewProtocol?
    var router: PeopleRouterProtocol?
    
    init(view: GameViewProtocol, router: PeopleRouterProtocol) {
        self.view = view
        self.router = router
    }
    
    
}
