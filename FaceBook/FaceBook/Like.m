//
//  Like.m
//  Facebook
//

#import "Like.h"

@implementation Like

-(id) initWithLikeID:(NSString*)likeId
           likeOwner:(User*)likeOwner
                date:(NSDate*)date;
{
    self = [super init];
    
    if(self)
    {
        self.likeId = likeId;
        self.likeOwner = likeOwner;
        self.date = date;
    }
    
    return self;
}

@end
