//
//  NSMutableAttributedString+RCSUtils.h
//  
//
//  Created by Ryan C. Spring on 11/20/12.
//
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (RCSUtils)

-(NSRange)rangeOfString;
-(NSMutableAttributedString*)setFontForEntireAttributedString:(UIFont*)font;
-(NSMutableAttributedString*)setFontForRange:(NSRange)range onAttributedString:(UIFont*)font;
-(void)setFirst:(NSUInteger)number charactersToBoldOfFont:(UIFont*)font andColor:(UIColor*)color;
-(void)setFirst:(NSUInteger)number charactersToFont:(UIFont*)font andColor:(UIColor*)color;
-(NSMutableAttributedString*)setEntireStringToColor:(UIColor*)color;
@end
