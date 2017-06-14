//
//  ViewController.swift
//  Project6b
//
//  Created by Akbar Mirza on 6/12/17.
//  Copyright © 2017 Akbar Mirza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        
        // add our subviews
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        // create a views dictionary
//        let viewsDictionary = [
//            "label1": label1,
//            "label2": label2,
//            "label3": label3,
//            "label4": label4,
//            "label5": label5
//        ]
//
//        for label in viewsDictionary.keys {
//            // add an array of constraints to our view controller's view
//            // this sets the horizontal constraint for each of our labels so that it stretches edge to edge in our view
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|",
//                                                               options: [],
//                                                               metrics: nil,
//                                                               views: viewsDictionary))
//        }
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1]-[label2]-[label3]-[label4]-[label5]",
//                                                          options: [],
//                                                          metrics: nil,
//                                                          views: viewsDictionary))
        // create a variable to hold the previous label
        // it's optional because the first label won't have a previous
        var previous: UILabel!
        
        for label in [label1, label2, label3, label4, label5] {
            // set the label to stretch across the view
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            // set each label's height to equal 88
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            // if there is a previous label...
            if previous != nil {
                // we have a previous label - create a top anchor constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor).isActive = true
            }
            
            // set the previous label to be the current one, for the next loop iteration
            previous = label
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // =========================================================================
    // OTHER FUNCTIONS
    // =========================================================================
    
    // tell iOS that we don't want the status bar on this view controller
    override var prefersStatusBarHidden: Bool {
        return true
    }


}

