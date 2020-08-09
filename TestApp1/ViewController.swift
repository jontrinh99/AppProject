//
//  ViewController.swift
//  TestApp1
//
//  Created by Joshua Bermudez on 6/18/20.
//  Copyright © 2020 Joshua Bermudez. All rights reserved.
//

import FSCalendar
import UIKit
import FirebaseDatabase

class ViewController: UIViewController, FSCalendarDelegate {
    
    @IBOutlet var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let ref = Database.database().reference()
        
        //ref.child("someid/name").setValue("Example")
        
        ref.childByAutoId().setValue(["Exercise":"Squat" , "Sets":"69", "reps":420 , "Weight":6969])
        
    }
    
    @IBAction func didTapButton() {
        guard let vc = storyboard?.instantiateViewController(identifier: "calendar_vc") as? CalendarViewController else {
            return
        }
        present(vc, animated: true)
    }
    
    @IBAction func SuggestionsdidTapButton(){
        let vc = storyboard? .instantiateViewController(identifier: "SuggestionsVC") as! SuggestionsViewController
        present(vc, animated: true)
    }
    
}


