//
//  PostComment.m
//  Facebook
//

#import "PostComment.h"

@implementation PostComment

-(id) initWithPostId:(NSString*)postId
             replies:(NSMutableArray<PostComment*> *)replies
              author:(User*)author
                date:(NSString*)date
           likeCount:(int)likeCount commentType:(int) commentType;
{
    self = [super initWithPostId:postId replies:replies author:author date:date likeCount:likeCount];
    
    if(self)
    {
        self.commentType = commentType;
        
    }
    
    return  self;
}

@end
