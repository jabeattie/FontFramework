//
//  FontLoader.swift
//  FontFramework
//
//  Created by James Beattie on 26/06/2017.
//  Copyright © 2017 James Beattie. All rights reserved.
//

import Foundation

class FontLoader {
    func loadFontFamily(_ name: String) -> Bool {
        var allFontsLoaded = true
        let bundle = Bundle(for: type(of: self))
        
        guard let fontBundleURL = bundle.url(forResource: name, withExtension: "bundle"),
            let fontBundle = Bundle(url: fontBundleURL),
            let fontURLs = fontBundle.urls(forResourcesWithExtension: "ttf", subdirectory: nil)
            else {
                return false
        }
        
        for fontURL in fontURLs {
            guard let fontData = try? Data(contentsOf: fontURL),
                let provider = CGDataProvider(data: fontData as CFData)
                else {
                    allFontsLoaded = false
                    continue
            }
            let font = CGFont(provider)
            var error: Unmanaged<CFError>?
            
            let success = CTFontManagerRegisterGraphicsFont(font, &error)
            if !success {
                print("Error loading font. Font is possibly already registered.")
                allFontsLoaded = false
                continue
            }
        }
        
        return allFontsLoaded
    }
}
