//
//  PostComment.h
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"
#import "Attachment.h"


//POJO: Plain Old Java Object: Classes with only properties and constructors and no methods in addition to their getters and setters

@interface PostComment : NSObject

//properties

@property int commentID;
@property (strong, nonatomic) User* commentAuthor;
@property (strong, nonatomic) NSDate* date;
@property (strong, nonatomic) NSMutableArray<Attachment*>* attachments;

//constructors
-(id) initWithCommentID:(int)commentID commentAuthor:(User*)commentAuthor date:(NSDate*)date attachments:(NSMutableArray<Attachment*>*)attachments;

//methods (APIs)

@end
