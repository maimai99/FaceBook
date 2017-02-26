//
//  PostComment.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"

//POJO: Plain Old Java Object: Classes with only properties and constructors and no methods in addition to their getters and setters

@interface PostComment : NSObject

// properties

@property (strong, nonatomic) NSString *commentId,
*comment;
@property (strong, nonatomic) User *commentAuthor;
@property (strong, nonatomic) NSString *date;
@property int likeCount;


// constructors

-(id) initWithCommentId:(NSString*)commentId
                comment:(NSString*)comment
          commentAuthor:(User*)commentAuthor
                   date:(NSString*)date
              likeCount:(int)likeCount;


//methods (APIs)

@end
