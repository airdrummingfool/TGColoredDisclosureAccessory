//
// TGColoredDisclosureAccessory.h
//
// Based on http://www.cocoanetics.com/2010/10/custom-colored-disclosure-indicators/
// Modified by Tommy Goode on 7/16/12.
//

@import UIKit;

@interface TGColoredDisclosureAccessory : UIControl

@property (nonatomic, strong) IBInspectable UIColor *accessoryColor;
@property (nonatomic, strong) IBInspectable UIColor *highlightedColor;

@property (nonatomic, assign) IBInspectable CGFloat lineWidth;
@property (nonatomic, assign) IBInspectable CGFloat radius;
@property (nonatomic, assign) IBInspectable CGFloat rightPadding;

+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color;
+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color radius:(CGFloat)radius rightPadding:(CGFloat)rightPadding;

@end
