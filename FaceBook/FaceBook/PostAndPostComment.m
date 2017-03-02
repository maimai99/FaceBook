//
//  PostAndPostComment.m
//  FaceBook
//
//  Created by sherry on 2017/03/01.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import "PostAndPostComment.h"
#import "User.h"
#import "PostComment.h"

@implementation PostAndPostComment

-(id) initWithPostId:(NSString*)postId
                replies:(NSMutableArray<PostComment*> *)replies
                author:(User*)author
                   date:(NSString*)date
              likeCount:(int)likeCount{
    
    self = [super init];
    
    if(self)
    {
        self.postId = postId;
        self.replies = replies;
        self.author = author;
        self.date = date;
        self.likeCount = likeCount;
    }
    
    return  self;
}


@end
