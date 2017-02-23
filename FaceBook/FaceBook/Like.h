//
//  Like.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Like : NSObject

//properties

@property int likeID;
@property (strong, nonatomic) User* likeOwner;
@property (strong, nonatomic) NSDate* date;

//constructors

-(id) initWithLikeID:(int)likeID likeOwner:(User*)likeOwner date:(NSDate*)date;

//methods (APIs)


@end
