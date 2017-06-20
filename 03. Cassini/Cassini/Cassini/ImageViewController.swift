//
//  ImageViewController.swift
//  Cassini
//
//  Created by Volodymyr Romanov on 6/19/17.
//  Copyright © 2017 Vladimir Romanov. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    var imageURL: URL? {
        didSet {
            image = nil
            if view.window != nil {
                fetchImage()
            }
        }
    }
    private func fetchImage() {
        if let url = imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data: imageData)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.addSubview(imageView)
        imageURL = DemoURL.Stanford
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }
    @IBOutlet weak var scrollView: UIScrollView! {
        didSet {
            scrollView.addSubview(imageView)
        }
    }
    private var imageView = UIImageView()
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
        }
    }
}
