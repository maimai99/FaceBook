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
    //現時刻を取得してPost内で表示
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    NSString *date24 = [dateFormatter stringFromDate:date];
    
    
    
    Attachment *attach1 = [[Attachment alloc]initWithAttachementID:1 type:1 dataURL:@"http://gmail"];

    
    NSMutableArray<Attachment*>* attachments = [[NSMutableArray alloc] initWithObjects:attach1,nil];
    
    Post *postContent = [[Post alloc] initWithContent:@"AAAAAAAAAAAAAAA" date:date24 author:@"mai" attachments:attach1 comments:@"Are you joking?"];
    
    NSArray<Post*>* posts = [[NSArray alloc] initWithObjects:postContent,nil];
    
    
    return posts;
}

-(void)showPosts:(NSArray<Post*>*)posts {
    
    for (Post *post in posts) {
        
        NSLog(@"%@\n\n",post.date);
        NSLog(@"%@\n\n",post.author);
        NSLog(@"%@\n\n",post.content);
        NSLog(@"%@\n\n",post.attachments);
        NSLog(@"%@\n\n",post.comments);
        
    }
}

@end
