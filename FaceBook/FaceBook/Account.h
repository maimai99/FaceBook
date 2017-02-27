//
//  Account.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Account : NSObject

// properties

@property (strong, nonatomic) NSString *email,
*password;


// constructors

-(id) initWithEmail:(NSString*)email
           password:(NSString*)password;


// methods (APIs)

-(NSMutableArray<User*>*) allUsers;

-(User*) isAccountValid:(NSString*)email password:(NSString*)password;

@end
