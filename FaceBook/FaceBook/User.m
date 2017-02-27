//
//  Profile.m
//  Facebook
//

#import "User.h"

@implementation User

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
{
    self = [super init];
    
    if (self)
    {
        self.userId = userId;
        self.password = password;
        self.firstName = firstName;
        self.lastName = lastName;
        self.email = email;
        self.phoneNumber = phoneNumber;
        self.location = location;
        self.profilePicURL = profilePicURL;
        self.age = age;
        self.timezome = timezome;
        self.birthday = birthday;
    }
    
    return self;
}


-(void) editProfileWithNewfirstName:(NSString*)newFirstName
                        newLastName:(NSString*)newLastName
                           newEmail:(NSString*)newEmail
                     newPhoneNumber:(NSString*)newPhoneNumber
                        newLocation:(NSString*)newLocation
                   newProfilePicURL:(NSString*)newProfilePicURL
                             newAge:(int)newAge
                        newTimezone:(int)newTimezone
                        newBirthday:(int)newBirthday
{
    self.firstName = newFirstName;
    self.lastName = newLastName;
    self.email = newEmail;
    self.phoneNumber = newPhoneNumber;
    self.location = newLocation;
    self.profilePicURL = newProfilePicURL;
    self.age = newAge;
    self.timezome = newTimezone;
    self.birthday = newBirthday;
}


-(void) saveProfile
{
    NSLog(@"\nAccount has been successfully updated!\n");
}


-(void) printProfileWithUser:(User*)user {
    NSLog(@"\n==============================\n");
    NSLog(@"UserID: %@\n", user.userId);
    NSLog(@"Name: %@ %@\n", user.firstName, user.lastName);
    NSLog(@"Email: %@\n", user.email);
    NSLog(@"Phone: %@\n", user.phoneNumber);
    NSLog(@"Location: %@\n", user.location);
    NSLog(@"Time-zone: %d\n", user.timezome);
    NSLog(@"Age: %d\n", user.age);
    NSLog(@"Birthday: %d\n", user.birthday);
    NSLog(@"Profile Picture: %@\n", user.profilePicURL);
    NSLog(@"\n==============================\n");
}

@end
