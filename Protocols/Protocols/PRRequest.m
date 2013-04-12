//
//  PRRequest.m
//  Protocols
//
//  Created by Romy on 4/11/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import "PRRequest.h"

@implementation PRRequest

-(void)startSomething {
    
    [self.delegate requestStarted];
    
    // in 10 seconds it will say to stop
    [NSTimer scheduledTimerWithTimeInterval:10
                                     target:self
                                   selector:@selector(stopSomething)
                                   userInfo:nil
                                    repeats:NO];
    
}

-(void)stopSomething {
 // hey self.delegate do you have this method?
    if([self.delegate respondsToSelector:@selector(requestFinished:)]) {
        [self.delegate requestFinished:self];
    }
}

@end
