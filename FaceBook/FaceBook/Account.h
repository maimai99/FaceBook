//
//  Account.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Account : NSObject

//properties

//username
//password
@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* password;

//constructors

-(id) initWithUsername:(NSString*)myUsername password:(NSString*)myPassword;

//methods (APIs)

-(BOOL) isAccountValid;

@end
