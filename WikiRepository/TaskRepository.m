//
//  TaskRepository.m
//  WikiRepository
//
//  Created by Donald Pavlik on 4/29/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import "TaskRepository.h"
#import "Domain/Task.h"

@interface TaskRepository()

/*!
    Local cache of all tasks found from wikiFileReader
    @result Mutable Array with ITasks
*/
@property (strong, nonatomic) NSMutableArray *cache;

@end

@implementation TaskRepository	

-(NSMutableArray *)cache
{
    if (_cache)
    {
        _cache = [[NSMutableArray alloc]init];
    }
    
    return _cache;
}

-(id<ITask>)Create{
    Task *task = [[Task alloc] init];
    id<ITask> iTask = (id<ITask>) task;
    return iTask;
}

@end
