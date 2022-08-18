//
//  GameViewController.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 18.08.2022.
//

import UIKit

final class GameViewController: UIViewController {
    
    var presenter: GameViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
}

extension GameViewController: GameViewProtocol {
    
}
