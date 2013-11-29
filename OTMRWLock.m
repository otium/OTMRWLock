//
//  OTMRWLock.m
//  OTMCache Example
//
//  Created by Ryan on 11/26/13.
//  Copyright (c) 2013 Otium. All rights reserved.
//

#include <pthread.h>

#import "OTMRWLock.h"

@implementation OTMRWLock {
	
	pthread_rwlock_t _lock;
}

-(instancetype)init {
	
	int result = pthread_rwlock_init(&_lock, NULL);
	if (result != 0) {
		return nil;
	}
		
	return self;
}

-(void)dealloc {
	
	pthread_rwlock_destroy(&_lock);
}

-(void)lock {
	
	pthread_rwlock_wrlock(&_lock);
}

-(void)unlock {
	
	pthread_rwlock_unlock(&_lock);
}

-(void)RLock {
	
	pthread_rwlock_rdlock(&_lock);
}

-(BOOL)tryLock {
	
	return pthread_rwlock_trywrlock(&_lock) == 0;
}

-(BOOL)tryRLock {
	
	return pthread_rwlock_tryrdlock(&_lock) == 0;
}

@end
