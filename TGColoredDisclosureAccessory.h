//
// TGColoredDisclosureAccessory.h
//
// Based on http://www.cocoanetics.com/2010/10/custom-colored-disclosure-indicators/
// Modified by Tommy Goode on 7/16/12.
//

#import <UIKit/UIKit.h>

@interface TGColoredDisclosureAccessory : UIControl

@property (nonatomic, strong) UIColor *accessoryColor;
@property (nonatomic, strong) UIColor *highlightedColor;

@property (nonatomic, strong) NSNumber *radius;
@property (nonatomic, strong) NSNumber *rightPadding;

+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color;
+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color radius:(NSNumber *)radius rightPadding:(NSNumber *)rightPadding;
@end
