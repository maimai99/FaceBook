//
//  Profile.h
//  Facebook
//

#import <Foundation/Foundation.h>



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
            birthday:(int)birthday;


// methods (APIs)

-(void) editProfileWithNewfirstName:(NSString*)newFirstName
                        newLastName:(NSString*)newLastName
                           newEmail:(NSString*)newEmail
                     newPhoneNumber:(NSString*)newPhoneNumber
                        newLocation:(NSString*)newLocation
                   newProfilePicURL:(NSString*)newProfilePicURL
                             newAge:(int)newAge
                        newTimezone:(int)newTimezone
                        newBirthday:(int)newBirthday;

-(void) saveProfile;

-(void) printProfileWithUser:(User*)user;

@end
