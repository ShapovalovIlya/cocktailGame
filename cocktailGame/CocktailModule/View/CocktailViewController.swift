//
//  CocktailViewController.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 16.08.2022.
//

import UIKit

final class CocktailViewController: UIViewController {
    
    var presenter: CocktailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }
}

extension CocktailViewController: CocktailViewProtocol {
    
}
