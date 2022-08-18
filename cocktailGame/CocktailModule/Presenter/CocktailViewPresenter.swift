//
//  CocktailViewPresenter.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 19.08.2022.
//

import Foundation

protocol CocktailViewProtocol: AnyObject {
    
}

protocol CocktailViewPresenterProtocol: AnyObject {
    init(view: CocktailViewProtocol, router: CocktailRouterProtocol)
    func getNumberOfRows() -> Int?
}

final class CocktailViewPresenter: CocktailViewPresenterProtocol {
    
    weak var view: CocktailViewProtocol?
    var router: CocktailRouterProtocol?
    
    
    required init(view: CocktailViewProtocol, router: CocktailRouterProtocol) {
        self.view = view
        self.router = router
    }
    
    func getNumberOfRows() -> Int? {
        5
    }
    
}
