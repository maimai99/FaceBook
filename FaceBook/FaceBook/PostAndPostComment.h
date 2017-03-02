//
//  PostAndPostComment.h
//  FaceBook
//
//  Created by sherry on 2017/03/01.
//  Copyright © 2017年 sherry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@class PostComment;

@interface PostAndPostComment : NSObject

@property (strong, nonatomic) NSString *postId;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) User *author;
@property int likeCount;
@property (strong, nonatomic) NSMutableArray<PostComment*> *replies;


-(id) initWithPostId:(NSString*)postId
                replies:(NSMutableArray<PostComment*> *)replies
                author:(User*)author
                   date:(NSString*)date
              likeCount:(int)likeCount;


@end
