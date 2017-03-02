//
//  PostComment.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "PostAndPostComment.h"

//POJO: Plain Old Java Object: Classes with only properties and constructors and no methods in addition to their getters and setters

@interface PostComment : PostAndPostComment

// properties

@property int commentType; //is audio or text comment

// constructors

-(id) initWithPostId:(NSString*)postId
             replies:(NSMutableArray<PostComment*> *)replies
              author:(User*)author
                date:(NSString*)date
           likeCount:(int)likeCount commentType:(int) commentType;


//methods (APIs)

@end
