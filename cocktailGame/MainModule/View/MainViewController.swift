//
//  MainTableViewController.swift
//  cocktailGame
//
//  Created by Илья Шаповалов on 15.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    var presenter: MainViewPresenterProtocol!
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .lightGray
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupNavigationBar()
        setDelegates()
        setConstraints()
    }

    // MARK: - Private methods
    @objc private func addButtonTap() {
        print("addButton tap!")
    }
}

//MARK: - Table View Data Source
extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.getNumberOfRows() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
}

//MARK: - Table View Delegate
extension MainViewController: UITableViewDelegate {
    
}

extension MainViewController: MainViewProtocol {
    
}

//MARK: - private extension
private extension MainViewController {
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func setupNavigationBar() {
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonTap)
        )
        
        navigationItem.rightBarButtonItem = addButton
    }
    
    func setDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
