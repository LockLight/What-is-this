//
//  ViewController.swift
//  What is This
//
//  Created by locklight on 2018/7/17.
//  Copyright © 2018年 LockLight. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var guessLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func takePicture(_ sender: UIBarButtonItem) {
        if !UIImagePickerController.isSourceTypeAvailable(.camera){
            return
        }
        
        let cameraPicker = UIImagePickerController()
        cameraPicker.sourceType = .camera
        cameraPicker.delegate = self
        cameraPicker.allowsEditing = false
        
        present(cameraPicker, animated: true, completion: nil)
    }
    
    @IBAction func openPhotos(_ sender: UIBarButtonItem) {
        
        let photoPicker = UIImagePickerController()
        photoPicker.sourceType = .photoLibrary
        photoPicker.delegate = self
        photoPicker.allowsEditing = false
        
        present(photoPicker, animated: true, completion: nil)
    }
}

extension ViewController:UIImagePickerControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

