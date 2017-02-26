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
@property (strong, nonatomic) NSString *date;


// constructors

-(id) initWithLikeID:(NSString*)likeId
           likeOwner:(User*)likeOwner
                date:(NSString*)date;

// methods (APIs)

@end
