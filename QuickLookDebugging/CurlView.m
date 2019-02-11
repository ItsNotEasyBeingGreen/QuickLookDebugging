//
//  CurlView.m
//  QuickLookDebugging
//
//  Created by Mark Cornelisse on 11/02/2019.
//  Copyright © 2019 Mark Cornelisse. All rights reserved.
//

#import "CurlView.h"

@implementation CurlView

- (UIBezierPath *)buildPathWithCenter:(CGPoint)center andRadius:(CGFloat)radius steps:(CGFloat)steps loopCount:(CGFloat)loopCount {
    CGFloat x, y;
    CGFloat away = radius / steps;
    CGFloat around = loopCount / steps * 2 * M_PI;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:center];
    
    for (int i = 1; i <= steps; i++) {
        x = cos(i * around) * i * away;
        y = sin(i * around) * i * away;
        
        [path addLineToPoint:CGPointMake(x + center.x, y + center.y)];
    }
    
    return path;
}

- (UIBezierPath *)path {
    CGFloat centerX = self.bounds.origin.x + (self.bounds.size.width / 2);
    CGFloat centerY = self.bounds.origin.y + (self.bounds.size.height / 2);
    CGPoint center = CGPointMake(centerX, centerY);
    return [self buildPathWithCenter:center andRadius:100 steps:1000 loopCount:10];
}

#pragma mark - UIView

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    UIBezierPath *path = [self path];
    [path stroke];
}

#pragma mark - UIResponder

#pragma mark - NSObject

- (id)debugQuickLookObject {
    return self.path;
}

@end
