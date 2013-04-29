//
//  TestTaskRepository.m
//  WikiRepository
//
//  Created by Donald Pavlik on 4/29/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import "TestTaskRepository.h"
#import "TaskRepository.h"

@implementation TestTaskRepository

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    [super tearDown];
}

/*! 
    Tests to see that the create method returns a new task that conforms to the 
    ITask protocol
*/
-(void)testCreate
{
    TaskRepository *taskRepository = [[TaskRepository alloc] init];
    id task = [taskRepository Create];
    STAssertNotNil(task, @"Create returned nil.");
    STAssertTrue([task 	conformsToProtocol:@protocol(ITask)], @"Returned task does not conform to ITask protocol");
}

@end
