//
//  TaskRepository.m
//  WikiRepository
//
//  Created by Donald Pavlik on 4/29/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import "TaskRepository.h"
#import "Domain/Task.h"
#import "IWikiFileReader.h"
#import "IWikiFileWriter.h"

@interface TaskRepository()

/*!
    Local cache of all tasks found from wikiFileReader
    @result Mutable Array with ITasks
*/
@property (strong, nonatomic) NSMutableArray *cache;

@property (strong, nonatomic) id<IWikiFileReader> reader;

@property (strong, nonatomic) id<IWikiFileWriter> writer;

@end

@implementation TaskRepository	

-(id)init
{
    return nil;
}

// designated initializer
-(id)init:(id<IWikiFileReader>)fileReader fileWriter:(id<IWikiFileWriter>)writer
{
    self = [super init];
    
    if (self)
    {
        _reader = fileReader;
        _writer = writer;
    }
    
    return self;
}

/*!
    Gets the cache, if it is empty initializes a new instance 
    of Mutable Array
    @result NSMutableArray
*/
-(NSMutableArray *)cache
{
    if (_cache)
    {
        _cache = [[NSMutableArray alloc]init];
    }
    
    return _cache;
}

-(id<ITask>)Create{
    return (id<ITask>) [[Task alloc] init];
}

@end
