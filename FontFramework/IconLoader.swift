//
//  IconLoader.swift
//  FontFramework
//
//  Created by James Beattie on 26/06/2017.
//  Copyright © 2017 James Beattie. All rights reserved.
//

import Foundation

class IconLoader {
    func getImageFromBundle(name: String) -> UIImage? {
        let podBundle = Bundle(for: type(of:self))
        if let url = podBundle.url(forResource: "Icons", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: name, in: bundle, compatibleWith: nil)
        }
        return nil
    }
}
