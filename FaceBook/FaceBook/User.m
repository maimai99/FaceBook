//
//  Profile.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import "User.h"

@implementation User

-(id) initWithFirstname:(NSString*)firstname lastname:(NSString*)lastname address:(NSString*)address age:(int)age phoneNumber:(NSString*)phoneNumber profilePicURL:(NSString*)profilePicURL
{
    //step1: memory allocation
    self = [super init];
    
    //step2: properties initialization
    if(self)
    {
        self.firstname = firstname;
        self.lastname = lastname;
        self.address = address;
        self.age = age;
        self.phoneNumber = phoneNumber;
        
        self.profilePicURL = profilePicURL;
    }
    
    return self;
}


-(void) editProfileWithNewfirstname:(NSString*)newFirstname newLastname:(NSString*)newLastname newAddress:(NSString*)newAddress newAge:(int)newAge newPhoneNumber:(NSString*)newPhoneNumber newProfilePicURL:(NSString*)newProfilePicURL
{
    self.firstname = newFirstname;
    self.lastname = newLastname;
    self.address = newAddress;
    
    self.age = newAge;
    self.phoneNumber = newPhoneNumber;
    self.profilePicURL = newProfilePicURL;
    
    
}

-(void) saveProfile
{
    NSLog(@"\nAccount has been successfully updated!\n");
}

-(void) printProfile
{
    NSLog(@"\n==============================\n");
    
    NSLog(@"Firstname is %@\n", self.firstname);
    NSLog(@"Lastname is %@\n", self.lastname);
    
    NSLog(@"Address is %@\n", self.address);
    NSLog(@"Age is %d\n", self.age);
    
    NSLog(@"Phone# is %@\n", self.phoneNumber);
    NSLog(@"My Profile Picture is located at this link %@\n", self.profilePicURL);
    NSLog(@"\n==============================\n");
}

@end
