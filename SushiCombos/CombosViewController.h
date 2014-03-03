//
//  CombosViewController.h
//  SushiCombos
//
//  Created by NEIL DINGMAN on 3/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterViewController;

@interface CombosViewController : UIViewController {
    IBOutlet UITextField *name;
    IBOutlet UITextField *fish;
    NSManagedObject *Combos;
    MasterViewController *masterController;
}

@property (nonatomic, retain) UITextField *name;
@property (nonatomic, retain) UITextField *fish;
@property (nonatomic, retain) NSManagedObject *Combos;
@property (nonatomic, retain) MasterViewController *masterController;

-(IBAction)save:(id)sender;
-(IBAction)cancel:(id)sender;
-(id)initWithMasterController:(MasterViewController *)aMasterController combos:(NSManagedObject *)aCombos;
//
@end
