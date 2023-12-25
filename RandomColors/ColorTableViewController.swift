//
//  ColorTableViewController.swift
//  RandomColors
//
//  Created by John Patrick Echavez on 12/24/23.
//

import UIKit

class ColorTableViewController: UIViewController {
    
    var colors: [UIColor] = [];

    override func viewDidLoad() {
        super.viewDidLoad()

        createRandomColors()
    }
    
    func createRandomColors() {
        
        for _ in 0..<50 {
            colors.append(.randomColor())
        }
        
        print(colors)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! ColorDetailViewController
        destinationViewController.color = sender as? UIColor
        
    }
    
}

extension ColorTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell       = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { return UITableViewCell() }
        let color            = colors[indexPath.row]
        cell.backgroundColor = color
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailViewController", sender: color)
    }
}

