//
//  ViewController.swift
//  TestApp1
//
//  Created by Joshua Bermudez on 6/18/20.
//  Copyright © 2020 Joshua Bermudez. All rights reserved.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {
    
    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "calendar_vc") as? CalendarViewController else {
            return
        }
        present(vc, animated: true)
    }
    
    
}

