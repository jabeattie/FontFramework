//
//  Icons.swift
//  FontFramework
//
//  Created by James Beattie on 26/06/2017.
//  Copyright © 2017 James Beattie. All rights reserved.
//

import Foundation

public class Icons {
    private static let iconLoader = IconLoader()
    
    public static func getCameraIcon() -> UIImage? {
        return iconLoader.getImageFromBundle(name: "camera")
    }
}
