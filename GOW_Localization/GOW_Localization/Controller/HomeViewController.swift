//
//  HomeViewController.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let menuOptions : [MenuOption] = [
                MenuOption(
                    title:"menu.option.videogames",
                    image:"gamecontroller.fill",
                    segue:"gamesSegue")
                , MenuOption(title:"menu.option.weapons",
                             image:"shield.fill",
                             segue:"weaponsSegue")
                , MenuOption(
                    title:"menu.option.characters",
                    image:"person.crop.rectangle.stack.fill",
                    segue:"charactersSegue")
                ,MenuOption(
                    title:"menu.option.merchandise",
                    image:"shippingbox.fill",
                    segue:"merchandiseSegue")
            ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GOWCell
        // Configure the cell...
        //cell.menuTitle.text = NSLocalizedString(menuOptions[indexPath.row].title, comment:"")
        cell.menuTitle.text = menuOptions[indexPath.row].title.localized
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        return cell
    }
    
    //Usar la siguiente funcion si queremos dispara un segue: (did select row at)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }
    

   
}
