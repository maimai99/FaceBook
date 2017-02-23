//
//  main.m
//  Linkedin
//
//  Created by Alireza Davoodi on 2017-02-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Account.h"
#import "User.h"
#import "FeedsManager.h"

int main(int argc, const char * argv[]) {
    
    //create an account object
    
    //Step1: Creating an account object
    Account* myAccount = [[Account alloc] initWithUsername:@"alireza" password:@"ali123"];
    
    
    
    //Step2: Checking whether the account is valid or not
    BOOL isValid = [myAccount isAccountValid];
    
    if(isValid==true)
    {
        NSLog(@"\nThe account is valid\n");
    }
    else
    {
        NSLog(@"\nThe account is Not valid\n");
    }
    
    //create a profile object
    //Step1:
    User* myProfile = [[User alloc] initWithFirstname:@"Ali" lastname:@"Reza" address:@"Vancouver, Canada" age:82 phoneNumber:@"12345457" profilePicURL:@"https://gmail.com"];
    
    [myProfile printProfile];
    
    
    //Ask Linkedin to show us 10 most recent posts
    
    FeedsManager* feedManager = [[FeedsManager alloc] init];
    
    NSArray<Post*>* listOfPosts = [feedManager loadsFeedsForAccount:myAccount amount:10];
    
    for(int i=0; i<listOfPosts.count; i++)
    {
        Post* post = [listOfPosts objectAtIndex:i];
        
        //showing the post
        [post show];
        
        //reporting the post
        [post reportThePost];
        
        
        //adding a like to the post
        User* user = [[User alloc] init];
        NSDate* date = [NSDate date];
        Like* like = [[Like alloc] initWithLikeID:1 likeOwner:user date:date];
        [post addLike:like];
        
        
        //adding a comment to the post
        NSMutableArray<Attachment*>* attachments = [[NSMutableArray<Attachment*> alloc] init];
        Attachment* att1 = [[Attachment alloc] initWithAttachementID:1 type:1 dataURL:@"https://www.google.com"];
        
        [attachments addObject:att1];
        
        Attachment* att2 = [[Attachment alloc] initWithAttachementID:2 type:3 dataURL:@"https://www.internet.org"];
        [attachments addObject:att2];
        
        PostComment* comment = [[PostComment alloc] initWithCommentID:1 commentAuthor:user date:date attachments:attachments];
        
        [post addComment:comment];
        
    }
    
    
    
    return NSApplicationMain(argc, argv);
}
