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
    // Tear-down code here.
    
    [super tearDown];
}

-(void)testCreate
{
    TaskRepository *taskRepository = [[TaskRepository alloc] init];
    STAssertNotNil([taskRepository Create], @"Create returned nil.");
}

@end
