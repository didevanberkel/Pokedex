//
//  PokeCell.swift
//  Pokedex
//
//  Created by Dide van Berkel on 26-03-16.
//  Copyright © 2016 Gary Grape Productions. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        self.nameLabel.text = pokemon.name.capitalizedString
        thumbImage.image = UIImage(named: "\(self.pokemon.pokeDexId)")
    }
    
}
