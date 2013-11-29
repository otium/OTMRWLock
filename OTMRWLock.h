//
//  OTMRWLock.h
//  OTMCache Example
//
//  Created by Ryan on 11/26/13.
//  Copyright (c) 2013 Otium. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OTMRWLock : NSObject<NSLocking>

-(void)lock;
-(void)unlock;

-(void)RLock;

-(BOOL)tryRLock;
-(BOOL)tryLock;

@end
