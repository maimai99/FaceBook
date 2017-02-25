//
//  Account.h
//  Facebook
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

// properties

@property (strong, nonatomic) NSString *username,
*password;


// constructors

-(id) initWithUsername:(NSString*)myUsername
              password:(NSString*)myPassword;


// methods (APIs)

-(BOOL) isAccountValid;

@end
