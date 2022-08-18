//
//  MainPresenter.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import Foundation

protocol PeopleViewProtocol: AnyObject {
    
}

protocol PeopleViewPresenterProtocol: AnyObject {
    init(view: PeopleViewProtocol, router: PeopleRouterProtocol)
    func getNumberOfRows() -> Int?
    func tapOnPerson()
}

final class PeopleViewPresenter: PeopleViewPresenterProtocol {
    
    weak var view: PeopleViewProtocol?
    var router: PeopleRouterProtocol?
    
    
    required init(view: PeopleViewProtocol, router: PeopleRouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func getNumberOfRows() -> Int? {
        5
    }
    
    func tapOnPerson() {
        router?.showGameVC()
    }
    
    func addPerson() {
        
    }
    
}
