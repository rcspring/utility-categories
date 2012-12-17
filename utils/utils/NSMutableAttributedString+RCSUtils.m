//
//  NSMutableAttributedString+RCSUtils.m
// 
//
//  Created by Ryan C. Spring on 11/20/12.
//
//

#import "NSMutableAttributedString+RCSUtils.h"
#import <CoreText/CoreText.h>

@implementation NSMutableAttributedString (RCSUtils)

-(NSMutableAttributedString*)setFontForEntireAttributedString:(UIFont *)font {
    
    
    
    
    return [self setFontForRange:[self rangeOfString] onAttributedString:font];
}


-(NSMutableAttributedString*)setFontForRange:(NSRange)range onAttributedString:(UIFont*)font  {
    
    [self addAttribute:NSFontAttributeName value:font range:range];
    
    return self;
    
}

-(NSMutableAttributedString*)setColorForRange:(NSRange)range color:(UIColor *)color  {
    
    [self addAttribute:(id)NSForegroundColorAttributeName value:color range:range];
    
    return self;
    
}

-(NSMutableAttributedString*)setEntireStringToColor:(UIColor*)color {

     [self addAttribute:(id)NSForegroundColorAttributeName value:color range:[self rangeOfString]];
}



-(NSRange)rangeOfString {
    NSRange rangeOfString;
    rangeOfString.location = 0;
    rangeOfString.length = self.length;
    
    return rangeOfString;
}

#pragma mark Attributed String Functions

-(void)setFirst:(NSUInteger)number charactersToBoldOfFont:(UIFont*)font andColor:(UIColor*)color {
    NSRange boldRange;
    boldRange.location = 0;
    boldRange.length = number;
    
    
    
    
    
    [self setFontForRange:boldRange onAttributedString:[NSMutableAttributedString boldFontForFamily:font]];
    [self setColorForRange:boldRange color:color];
    
}

-(void)setFirst:(NSUInteger)number charactersToFont:(UIFont*)font andColor:(UIColor*)color {
    NSRange boldRange;
    boldRange.location = 0;
    boldRange.length = number;
    
    
    [self setFontForRange:boldRange onAttributedString:font];
    [self setColorForRange:boldRange color:color];

}

+(UIFont*)boldFontForFamily:(UIFont*)fontIn {
    NSString* name = [NSString stringWithFormat:@"%@-Bold",fontIn.fontName];
    
    return [UIFont fontWithName:name size:fontIn.pointSize];
}


@end
