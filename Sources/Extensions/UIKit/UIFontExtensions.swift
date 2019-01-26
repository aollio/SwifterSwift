//
//  UIFontExtensions.swift
//  SwifterSwift
//
//  Created by Benjamin Meyer on 9/16/17.
//  Copyright © 2017 SwifterSwift
//

#if canImport(UIKit)
import UIKit

// MARK: - Properties
@available(iOS 11.0, *)
public extension UIFont {

    /// SwifterSwift: Font as bold font
    public var bold: UIFont {
        return UIFont(descriptor: fontDescriptor.withSymbolicTraits(.traitBold)!, size: 0)
    }

    /// SwifterSwift: Font as italic font
    public var italic: UIFont {
        return UIFont(descriptor: fontDescriptor.withSymbolicTraits(.traitItalic)!, size: 0)
    }

    /// SwifterSwift: Font as monospaced font
    ///
    ///     UIFont.preferredFont(forTextStyle: .body).monospaced
    ///
    public var monospaced: UIFont {
        let settings = [[UIFontDescriptor.FeatureKey.featureIdentifier: kNumberSpacingType, UIFontDescriptor.FeatureKey.typeIdentifier: kMonospacedNumbersSelector]]

        let attributes = [UIFontDescriptor.AttributeName.featureSettings: settings]
        let newDescriptor = fontDescriptor.addingAttributes(attributes)
        return UIFont(descriptor: newDescriptor, size: 0)
    }
    
    public static var largeTitle: UIFont {
        return UIFont.preferredFont(forTextStyle: .largeTitle)
    }
    
    public static var title1: UIFont {
        return UIFont.preferredFont(forTextStyle: .title1)
    }
    
    public static var title2: UIFont {
        return UIFont.preferredFont(forTextStyle: .title2)
    }
    
    public static var title3: UIFont {
        return UIFont.preferredFont(forTextStyle: .title3)
    }
    
    public static var headline: UIFont {
        return UIFont.preferredFont(forTextStyle: .headline)
    }
    
    public static var body: UIFont {
        return UIFont.preferredFont(forTextStyle: .body)
    }
    
    public static var smallBody: UIFont {
        return UIFont.preferredFont(forTextStyle: .body).withSize(15.0)
    }
    
    public static var size14: UIFont {
        return UIFont.preferredFont(forTextStyle: .body).withSize(14.0)
    }
    
    public static var caption1: UIFont {
        return UIFont.preferredFont(forTextStyle: .caption1)
    }
    
    public static var caption2: UIFont {
        return UIFont.preferredFont(forTextStyle: .caption2)
    }
    
    public static var footnote: UIFont {
        return UIFont.preferredFont(forTextStyle: .footnote)
    }
        
        
    

}
#endif
