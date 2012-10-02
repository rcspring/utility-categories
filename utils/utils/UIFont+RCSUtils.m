//
//  UIFont+RCSAdditions.m
//  Welt
//
//  Created by Ryan C. Spring on 10/2/12.
//
//

#import "UIFont+RCSUtils.h"
#import <CoreText/CoreText.h>

@implementation UIFont (RCSUtils)

-(UIFont*)boldFont {
    
    NSString* regularFontName = self.fontName;
    
    CTFontRef newFontWithoutTraits = CTFontCreateWithName((CFStringRef)regularFontName,self.pointSize,NULL);
    
    CTFontSymbolicTraits foo = CTFontGetSymbolicTraits(newFontWithoutTraits);
    
    foo = foo & kCTFontBoldTrait;
    
    CTFontRef boldFont = CTFontCreateCopyWithSymbolicTraits(newFontWithoutTraits, self.pointSize, nil, kCTFontBoldTrait, kCTFontBoldTrait);
    
    CFStringRef name = CTFontCopyPostScriptName(boldFont);
    CFRelease(newFontWithoutTraits);
    CFRelease(boldFont);
    
    UIFont* boldUIFont = [UIFont fontWithName:(NSString*)name size:self.pointSize];
    
    CFRelease(name);
    
    return boldUIFont;
    
}

-(UIFont*)italicFont {
    
    NSString* regularFontName = self.fontName;
    
    CTFontRef newFontWithoutTraits = CTFontCreateWithName((CFStringRef)regularFontName,self.pointSize,NULL);
    
    CTFontSymbolicTraits foo = CTFontGetSymbolicTraits(newFontWithoutTraits);
    
    foo = foo & kCTFontBoldTrait;
    
    CTFontRef italicCTFont = CTFontCreateCopyWithSymbolicTraits(newFontWithoutTraits, self.pointSize, nil, kCTFontItalicTrait, kCTFontItalicTrait);
    
    CFStringRef name = CTFontCopyPostScriptName(italicCTFont);
    CFRelease(newFontWithoutTraits);
    CFRelease(italicCTFont);
    
    UIFont* italicUIFont = [UIFont fontWithName:(NSString*)name size:self.pointSize];
    
    CFRelease(name);
    
    return italicUIFont;
    
}


@end
