//
// TGColoredDisclosureAccessory.m
//
// Based on http://www.cocoanetics.com/2010/10/custom-colored-disclosure-indicators/
// Modified by Tommy Goode on 7/16/12.
//

#import "TGColoredDisclosureAccessory.h"

@implementation TGColoredDisclosureAccessory

#pragma mark - Class creation
+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color {
	return [TGColoredDisclosureAccessory accessoryWithColor:color radius:4.5 rightPadding:0];
}

+ (TGColoredDisclosureAccessory *)accessoryWithColor:(UIColor *)color radius:(CGFloat)radius rightPadding:(CGFloat)rightPadding {
	CGFloat height = radius * 2. + 6.;
	CGFloat width = radius + 6. + rightPadding;
	TGColoredDisclosureAccessory *accessory = [[TGColoredDisclosureAccessory alloc] initWithFrame:CGRectMake(0, 0, width, height)];
	accessory.accessoryColor = color;
	accessory.radius = radius;
	accessory.rightPadding = rightPadding;
	return accessory;
}

#pragma mark - Lifecycle
- (instancetype)initWithCoder:(NSCoder *)coder {
	self = [super initWithCoder:coder];
	if (self) {
		[self commonInit];
	}
	return self;
}

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		[self commonInit];
	}
	return self;
}

- (void)commonInit {
	self.userInteractionEnabled = NO;
	self.backgroundColor = [UIColor clearColor];
	self.lineWidth = 3;
	self.radius = 4.5;
}

- (void)drawRect:(CGRect)rect {
	// (x,y) is the center of the head of the arrow
	CGFloat x = CGRectGetMaxX(self.bounds) - 2.5 - self.rightPadding;
	CGFloat y = CGRectGetMidY(self.bounds);
	const CGFloat R = self.radius;
	CGContextRef ctxt = UIGraphicsGetCurrentContext();
	CGContextMoveToPoint(ctxt, x - R, y - R);
	CGContextAddLineToPoint(ctxt, x, y);
	CGContextAddLineToPoint(ctxt, x - R, y + R);
	CGContextSetLineCap(ctxt, kCGLineCapSquare);
	CGContextSetLineJoin(ctxt, kCGLineJoinMiter);
	CGContextSetLineWidth(ctxt, self.lineWidth);

	if (self.highlighted) {
		[self.highlightedColor setStroke];
	}
	else {
		[self.accessoryColor setStroke];
	}

	CGContextStrokePath(ctxt);
}

- (void)setHighlighted:(BOOL)highlighted {
	[super setHighlighted:highlighted];
	[self setNeedsDisplay];
}

#pragma mark Getters/setters
- (UIColor *)accessoryColor {
	if (!_accessoryColor) {
		return [UIColor grayColor];
	}
	return _accessoryColor;
}

- (UIColor *)highlightedColor {
	if (!_highlightedColor) {
		return [UIColor whiteColor];
	}
	return _highlightedColor;
}

@end
