//
//  ViewController.swift
//  04-ProgressViewCurso
//
//  Created by Bruno Arruda on 3/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressView.tintColor = UIColor.green
        progressView.trackTintColor = UIColor.lightGray.withAlphaComponent(0.6)
        
        let total = Progress(totalUnitCount: 100)
        
        total.completedUnitCount = 25
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
    }


}

