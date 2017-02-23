//
//  Profile.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

//properties

@property (strong, nonatomic) NSString* firstname;
@property (strong, nonatomic) NSString* lastname;
@property (strong, nonatomic) NSString* address;
@property int age;
@property (strong, nonatomic) NSString* phoneNumber;
@property (strong, nonatomic) NSString* profilePicURL;

//constructors
-(id) initWithFirstname:(NSString*)firstname lastname:(NSString*)lastname address:(NSString*)address age:(int)age phoneNumber:(NSString*)phoneNumber profilePicURL:(NSString*)profilePicURL;

//methods (APIs)
-(void) editProfileWithNewfirstname:(NSString*)newFirstname newLastname:(NSString*)newLastname newAddress:(NSString*)newAddress newAge:(int)newAge newPhoneNumber:(NSString*)newPhoneNumber newProfilePicURL:(NSString*)newProfilePicURL;

-(void) saveProfile;

-(void) printProfile;
@end
