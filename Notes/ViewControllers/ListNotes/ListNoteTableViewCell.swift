//
//  ListNoteTableViewCell.swift
//  Notes
//
//  Created by Alex on 01.03.2022.
//

import UIKit

class ListNoteTableViewCell: UITableViewCell {
    
    static let identifier = "ListNoteTableViewCell"
    
    @IBOutlet weak private var titleName: UILabel!
    @IBOutlet weak private var descriptionName: UILabel!
    
    func setup(note: Note) {
        titleName.text = note.title
        descriptionName.text = note.desc
    }
    
}
