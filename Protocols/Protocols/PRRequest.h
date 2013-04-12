//
//  PRRequest.h
//  Protocols
//
//  Created by Romy on 4/11/13.
//  Copyright (c) 2013 Snowyla. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PRRequest;
@protocol PRRequestDelegate <NSObject>

@required
-(void)requestStarted;

@optional
-(void)requestFinished:(PRRequest *)request;

@end

@interface PRRequest : NSObject

@property (weak, nonatomic) id <PRRequestDelegate> delegate;


-(void)startSomething;
-(void)stopSomething;

@end
