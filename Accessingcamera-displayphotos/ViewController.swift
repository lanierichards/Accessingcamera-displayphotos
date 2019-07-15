//
//  ViewController.swift
//  Accessingcamera-displayphotos
//
//  Created by Apple on 7/15/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController ()
    //This is an object where we can access to store our photos/take photos within the class Image Picker Controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        //This tells our object that any info (photos) is going to go back to this class (self)
    }

    @IBAction func takeSelfieTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        //this allows me to open my camera
        
        present(imagePicker, animated: true, completion: nil)
        //present is a built in function in apple that allows us to access our camera information
        //animated allows for a smooth transition if we set it to true
        //completion means that we exit out after we choose our photo
    }
    
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
}

