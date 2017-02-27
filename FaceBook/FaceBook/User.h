//
//  Profile.h
//  Facebook
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface User : NSObject

// properties

@property (strong, nonatomic) NSString *userId,
*password,
*firstName,
*lastName,
*email,
*phoneNumber,
*location,
*profilePicURL;
@property int age,
timezome,
birthday;
@property NSMutableArray<NSString*>* friends;


// constructors

-(id) initWithUserId:(NSString*)userId
            password:(NSString*)password
           firstName:(NSString*)firstName
            lastName:(NSString*)lastName
               email:(NSString*)email
         phoneNumber:(NSString*)phoneNumber
            location:(NSString*)location
       profilePicURL:(NSString*)profilePicURL
                 age:(int)age
            timezome:(int)timezome
            birthday:(int)birthday
             friends:(NSMutableArray<NSString*>*)friends;


// methods (APIs)

-(void) printProfileWithUser:(User*)user;

@end
