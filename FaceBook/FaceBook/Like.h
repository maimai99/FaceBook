//
//  Like.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Like : NSObject

// properties

@property (strong, nonatomic) NSString *likeId;
@property (strong, nonatomic) User *likeOwner;
@property (strong, nonatomic) NSDate *date;


// constructors

-(id) initWithLikeID:(NSString*)likeId
           likeOwner:(User*)likeOwner
                date:(NSDate*)date;

// methods (APIs)

@end
