//
//  EditNoteViewController.swift
//  Notes
//
//  Created by Alex on 28.02.2022.
//

import UIKit

class EditNoteViewController: UIViewController {
    
    static let identifier = "EditNoteViewController"
    
    var note: Note!
    weak var delegate: ListNotesDelegate?
    
    @IBOutlet weak private var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = note?.text
    }
    
    override func viewDidAppear(_ animated: Bool) {
        textView.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func updateNote() {
        
        print("")
        
        note.lastUpdated = Date()
        delegate?.refreshNotes()
    }
    
    private func deleteNote() {
        
        print("")
        
        
        delegate?.deleteNote(with: note.id)
    }
}

// MARK - UITextView Delegate
extension EditNoteViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        note?.text = textView.text
        if note?.title.isEmpty ?? true {
            deleteNote()
        } else {
            updateNote()
        }
    }
}
