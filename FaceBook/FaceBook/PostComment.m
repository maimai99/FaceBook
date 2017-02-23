//
//  PostComment.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "PostComment.h"

@implementation PostComment

-(id) initWithCommentID:(int)commentID commentAuthor:(User*)commentAuthor date:(NSDate*)date attachments:(NSMutableArray<Attachment*>*)attachments
{
    self = [super init];
    
    if(self)
    {
        self.commentID = commentID;
        self.commentAuthor = commentAuthor;
        self.date = date;
        self.attachments = attachments;
    }
    return  self;
}
@end
