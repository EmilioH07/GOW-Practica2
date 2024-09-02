//
//  WeaponsViewController.swift
//  GOW_Localization
//
//  Created by Azul Alfaro on 30/08/24.
//

import UIKit

class WeaponsViewController: UIViewController {

    @IBOutlet weak var WeaponsTableView: UITableView!
    
    
    
    
    
    // MARK: - Datasource
    var arrayWeapons : [Weapon] = []
    //    CGO Weapons
    //Weapons view controller
            
     //    CGO Weapons
                let cgoWeapons : [Weapon] = [
                    Weapon(
                        name: "weapon.name.lancer",
                        description: "weapon.description.lancer",
                        poster: "Mark1LancerAssaultRifle"
                        ),
                    Weapon(
                        name: "weapon.name.lancer2",
                        description: "weapon.description.lancer2",
                        poster: "LancerMk2"
                        ),
                    Weapon(
                        name: "weapon.name.sniper",
                        description: "weapon.description.sniper",
                        poster: "LongshotSniperRifle"
                        ),
                    Weapon(
                        name: "weapon.name.hammer_of_dawn",
                        description: "weapon.description.hammer_of_dawn",
                        poster: "HammerOfDawn"
                        ),
                    Weapon(
                        name: "weapon.name.mx8",
                        description: "weapon.description.mx8",
                        poster: "SnubPistol"
                    )
                    ]
                
            //    Locus Weapons
                let locusWeapons : [Weapon] = [
                    Weapon(
                    name: "weapon.name.boomshot",
                    description: "weapon.description.boomshot",
                    poster: "BoomshotGrenadeLauncher"
                ),
                    Weapon(
                        name: "weapon.name.hammerburstii",
                        description: "weapon.description.hammerburstii",
                        poster: "HammerburstII"
                    ),
                Weapon(
                    name: "weapon.name.mulcher",
                    description: "weapon.description.mulcher",
                    poster: "Mulcher"
                ),
                Weapon(
                    name: "weapon.name.bolo_grenade",
                    description: "weapon.description.bolo_grenade",
                    poster: "BoloGrenade"
                ),
                Weapon(
                    name: "weapon.name.boltok",
                    description: "weapon.description.boltok",
                    poster: "BoltokPistol"
                )
            ]
        
    override func viewDidLoad() {
        super.viewDidLoad()

        WeaponsTableView.dataSource = self
        WeaponsTableView.delegate = self
        let tabItem = self.tabBarItem.tag
        
        if tabItem == Constants.CGO {
            arrayWeapons = cgoWeapons
        }
        else {
            arrayWeapons = locusWeapons
        }
        print(arrayWeapons)
    
        
        
    }
}


    extension WeaponsViewController : UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayWeapons.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! WeaponsCell
            //cell.weaponsTitle.text = NSLocalizedString(arrayWeapons[indexPath.row].name, comment: "")
            //cell.weaponsDescription.text = NSLocalizedString(arrayWeapons[indexPath.row].description, comment: "")
            cell.weaponsTitle.text = arrayWeapons[indexPath.row].name.localized
            cell.weaponsDescription.text = arrayWeapons[indexPath.row].description.localized
            cell.weaponsImage.image = UIImage(named: arrayWeapons[indexPath.row].poster)
            return cell
        }
    
}
