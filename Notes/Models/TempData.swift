//
//  TempData.swift
//  Notes
//
//  Created by Alex on 03.03.2022.
//

import Foundation
import CoreData
import UIKit


class TempData {
    
    static let shared = TempData()
    
    let context = CoreDataManager.shared.viewContext
    
    private init() {}
    
    func createTempData(_ completion: @escaping() -> Void) {
        if !UserDefaults.standard.bool(forKey: "done") {
            
            UserDefaults.standard.set(true, forKey: "done")
            
            let testNote = Note(context: context)
            testNote.id = UUID()
            testNote.text = """
                Hello ! I'm your new note!
                Tap on me to see more text :)
                You can delete all text and note will be deleted automatically !
                Also you can back by swipe left and swipe this note for delete
                Enjoy and thank you %)
                """
            testNote.lastUpdated = Date()
            
            do {
                try context.save()
            } catch {
                print("An error ocurred while saving: \(error.localizedDescription)")
            }
            
        }
        
        
    }
}
