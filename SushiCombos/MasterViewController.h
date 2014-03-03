//
//  MasterViewController.h
//  SushiCombos
//
//  Created by NEIL DINGMAN on 3/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>



@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


-(void)insertCombosWithName:(NSString *)name fish:(NSString *)fish;
-(void)saveContext;

-(void)showCombosView;

@end
