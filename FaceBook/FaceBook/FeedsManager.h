//
//  FeedsManager.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Account.h"
#import "Post.h"

@interface FeedsManager : NSObject

//properties

//constructors

//methods (APIs)

-(NSArray<Post*>*) loadsFeedsForAccount:(Account*)account amount:(int)numberOfFeeds;

@end
