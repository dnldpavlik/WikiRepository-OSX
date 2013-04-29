//
//  TaskRepository.h
//  WikiRepository
//
//  Created by Donald Pavlik on 4/29/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Domain/Task.h"

@interface TaskRepository : NSObject

/*! 
    Creates a Task
    @result returns a new instance of Task
*/
-(Task *)Create;

@end
