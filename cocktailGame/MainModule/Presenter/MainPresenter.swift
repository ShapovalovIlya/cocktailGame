//
//  MainPresenter.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    
}

protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, router: RouterProtocol)
    func getNumberOfRows() -> Int?
}

final class MainPresenter: MainViewPresenterProtocol {
    
    weak var view: MainViewProtocol?
    var router: RouterProtocol?
    
    
    required init(view: MainViewProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func getNumberOfRows() -> Int? {
        5
    }
    
}
