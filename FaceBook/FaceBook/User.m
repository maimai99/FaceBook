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


-(void) printProfile
{
    NSLog(@"\n==============================\n");
    NSLog(@"UserID: %@\n", self.userId);
    NSLog(@"Name: %@ %@\n", self.firstName, self.lastName);
    NSLog(@"Email: %@\n", self.email);
    NSLog(@"Phone: %@\n", self.phoneNumber);
    NSLog(@"Location: %@\n", self.location);
    NSLog(@"Time-zone: %d\n", self.timezome);
    NSLog(@"Age: %d\n", self.age);
    NSLog(@"Birthday: %d\n", self.birthday);
    NSLog(@"Profile Picture: %@\n", self.profilePicURL);
    NSLog(@"\n==============================\n");
}

@end
