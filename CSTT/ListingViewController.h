//
//  ListingViewController.h
//  CSTT
//
//  Created by Rishab Arora on 18/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ListingViewController : UITableViewController {
    NSMutableArray *hindiArray;
    NSMutableArray *englishArray;
    int ListID;
}

@property int ListID;

@end