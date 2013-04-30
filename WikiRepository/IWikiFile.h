//
//  IWikiFile.h
//  WikiRepository
//
//  Created by Donald Pavlik on 4/29/13.
//  Copyright (c) 2013 Donald Pavlik. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IWikiFile <NSObject>

/*!
    Title of the Wiki File
    @result Gets the Title of the file
*/
@property (strong, nonatomic) NSString *title;

/*!
    Meta Data for the Wiki File
    @result Dictionary with collection of available meta data
    @discussion One item stored in here is the actual file name of the wiki file
*/
@property (strong, nonatomic, readonly) NSMutableDictionary *metaData;

/*!
    Content of the wiki file in an array of lines, each line is a NSString
    @result Array of string of the contents of the file
*/
@property (strong, nonatomic, readonly) NSMutableArray *lines;

@end
