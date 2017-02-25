//
//  FeedsManager.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "FeedsManager.h"

@implementation FeedsManager

-(id)initWithPost:(Post*)post{
    
    self = [super init];
    if (self) {
        self.post = post;
    }
    return self;
}

-(NSArray<Post*>*) loadsFeedsForAccount:(Account*)account amount:(int)numberOfFeeds
{
    
    Post *post1 = [[Post alloc] initWithContent:@"Hello1"];
    Post *post2 = [[Post alloc] initWithContent:@"Hello2"];
    
    NSArray<Post*>* posts = [[NSArray alloc] initWithObjects:post1,post2,nil];
    
    return posts;
}

-(void)showPosts:(NSArray<Post*>*)posts {
    
    for (Post *post in posts) {
        
        NSLog(@"%@\n\n",post.content);
        
    }
}

@end
