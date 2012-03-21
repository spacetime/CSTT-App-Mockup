//
//  DefinitionView.h
//  CSTT
//
//  Created by Rishab Arora on 18/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DefinitionView : UIViewController {
    IBOutlet UILabel *englishText;
    IBOutlet UILabel *hindiText;
    
}
- (void) setEText: (NSString *) et HText: (NSString *) ht;
@property (nonatomic, retain) IBOutlet UILabel *englishText;
@property (nonatomic, retain) IBOutlet UILabel *hindiText;
-(IBAction) sayHello: (id) sender;
@end
