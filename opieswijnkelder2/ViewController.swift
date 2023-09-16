//
//  ViewController.swift
//  opieswijnkelder2
//
//  Created by user226791 on 8/30/22.
//

import UIKit

protocol biertjesViewControllerDelegate {
    
    func BiertjesViewController(_ BiertjesViewController: biertjesViewController, ditbiertjetoevoegen biertje: biertjes)
    
}


class biertjesViewController: UIViewController {
    
    @IBOutlet var naam: UITextField!
    @IBOutlet var aantal: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func nummer_van(lijst: Array<biertjes>, zoek: String) -> Int {
        for i in 0...lijst.count {
            if lijst[i].naam == zoek {
                return i
            }
        }
        return -1
    }
    
    @IBAction func Savegetikt2(_ sender: UIButton) {
        let biertje = biertjes(naam: self.naam.text ?? "", aantal: Int(self.aantal.value))
    }
    
    @IBAction func cansel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
