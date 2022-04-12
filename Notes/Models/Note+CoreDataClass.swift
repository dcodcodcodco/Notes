//
//  Note+CoreDataClass.swift
//  Notes
//
//  Created by Alex on 02.03.2022.
//
//

import Foundation
import CoreData

@objc(Note)
public class Note: NSManagedObject {
    var title: String {
        return text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines).first ?? ""
    } // возврат первой строки текста
    
    var desc: String {
        var lines = text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines)
        lines.removeFirst()
        return "\(lastUpdated.format()) \(lines.first ?? "")"
    } // возврат второй строки текста
}
