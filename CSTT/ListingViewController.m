//
//  ListingViewController.m
//  ncttApp
//
//  Created by Rishab Arora on 18/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ListingViewController.h"
#import "DefinitionView.h"

@implementation ListingViewController
@synthesize ListID;


- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    englishArray = [[NSMutableArray alloc] initWithObjects:
                    @"Arrangement Of Files",
                    @"Arrears",
                    @"Arrear Statement",
                    @"Arrival",
                    @"Arrival Report",
                    @"Arrivals",
                    @"Arrogance",
                    @"Arrogant",
                    @"Arsenal",
                    @"Arson",
                    @"Art",
                    @"Artgallery",
                    @"Article",
                    @"Articlesofassociation",
                    @"Artificer",
                    @"Artillery",
                    @"Artisan",
                    @"Artsandcrafts",
                    @"Ascend",
                    @"Ascendant",
                    @"Ascendingorder",
                    @"Ascertain",
                    @"Asiswhereis",
                    @"Aspect",
                    @"Aspersion",
                    @"Assailant",
                    @"Assassination",
                    @"Assayer",
                    @"Assaymaster",
                    @"Assaymethod",
                    @"Background Of The Case",
                    @"Back To Work",
                    @"Backward Reference",
                    @"Balance Amount Of D.C.R.G Pension",
                    @"Balance At Credit",
                    @"Balance In Hand",
                    nil];
    hindiArray = [[NSMutableArray alloc] initWithObjects:
                  @"मिसिल-विन्यास",
                  @"बकाया",
                  @"बकाया विवरण",
                  @"आगमन",
                  @"आगमन रिपोर्ट",
                  @"आमद",
                  @"दंभ; अक्खड़पन",
                  @"दंभी; अक्खड़",
                  @"आयुधागार",
                  @"आगजनी",
                  @"कला",
                  @"कला दीर्घा",
                  @"1.अनुच्छेद 2.वस्तु 3.लेख",
                  @"संस्था के अंतर्नियम",
                  @"परिशिल्पी",
                  @"तोपखाना",
                  @"कारीगर",
                  @"कला और शिल्प",
                  @"आरोहण करना",
                  @"पूर्वपुरुष",
                  @"आरोही क्रम",
                  @"अभिनिश्‍चित करना",
                  @"जैसा है जहां है",
                  @"1.पहलू, पक्ष 2.दृष्‍टि",
                  @"लांछन",
                  @"हमलावर",
                  @"हत्या; हनन",
                  @"पारखी",
                  @"अधिपारखी",
                  @"परख विधि	",
                  @"मामले की पृष्‍ठभूमि",
                  @"काम पर लौटें",
                  @"पूर्व संदर्भ",
                  @"मृत्यु तथा सेवानिवृत्‍ति उपदान पेन्शन की शेष राशि",
                  @"जमाखाते शेष",
                  @"हाथ शेष, रोकड़ शेष	", 
                  nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [englishArray release];
    [hindiArray release];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    if (ListID == 0)
        return [englishArray count];
    if (ListID == 1)
        return [hindiArray count];
    
    [self.tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    if (ListID == 0){
        cell.textLabel.text = [[englishArray objectAtIndex:indexPath.row] retain];
        cell.detailTextLabel.text = [[hindiArray objectAtIndex:indexPath.row] retain];
    }
    if (ListID == 1){
        cell.textLabel.text = [[hindiArray objectAtIndex:indexPath.row] retain];
        cell.detailTextLabel.text = [[englishArray objectAtIndex:indexPath.row] retain];
    }
#pragma WTF?
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }   
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog([englishArray objectAtIndex:indexPath.row]);
    DefinitionView *selectedDef = [[DefinitionView alloc] initWithNibName:@"DefinitionView" bundle:nil];
    [selectedDef setTitle:@"Definition/परिभाषा"];
    

    [self.navigationController pushViewController:selectedDef animated:YES]; 
    [selectedDef setEText:[englishArray objectAtIndex:indexPath.row] HText:[[hindiArray objectAtIndex:indexPath.row] retain]];
    [selectedDef release];
}

@end
