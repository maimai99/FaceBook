//
//  PostComment.m
//  Facebook
//

#import "PostComment.h"

@implementation PostComment

-(id) initWithCommentId:(NSString*)commentId
                comment:(NSString*)comment
          commentAuthor:(User*)commentAuthor
                   date:(NSDate*)date
              likeCount:(int)likeCount
{
    self = [super init];
    
    if(self)
    {
        self.commentId = commentId;
        self.comment = comment;
        self.commentAuthor = commentAuthor;
        self.date = date;
        self.likeCount = likeCount;
    }
    
    return  self;
}

@end
