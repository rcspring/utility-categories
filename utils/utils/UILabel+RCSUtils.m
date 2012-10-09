//
//  UILabel+RCSUtils.m
//  Baby
//
//  Created by Ryan C. Spring on 10/8/12.
//
//

#import "UILabel+RCSUtils.h"

@implementation UILabel (RCSUtils)


-(void)adjustFontSizeToFitWithMinimum:(CGFloat)minimumFontSize {
    
    for(int i=self.font.pointSize;i>=minimumFontSize;i--) {
        
        UIFont* sizeTestFont = [UIFont fontWithName:self.font.fontName size:i];
        CGSize sizeContraintToTest = CGSizeMake(self.frame.size.width,INT32_MAX);
        
        CGSize formattedSize = [self.text sizeWithFont:sizeTestFont constrainedToSize:sizeContraintToTest];
        
        if(formattedSize.height < self.frame.size.height) {
            self.font = sizeTestFont;
            break;
        }
    }
    
}

@end
