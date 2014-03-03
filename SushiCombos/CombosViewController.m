////This is free and unencumbered software released into the public domain.
//
//Anyone is free to copy, modify, publish, use, compile, sell, or
//distribute this software, either in source code form or as a compiled
//binary, for any purpose, commercial or non-commercial, and by any
//means.
//
//In jurisdictions that recognize copyright laws, the author or authors
//of this software dedicate any and all copyright interest in the
//software to the public domain. We make this dedication for the benefit
//of the public at large and to the detriment of our heirs and
//successors. We intend this dedication to be an overt act of
//relinquishment in perpetuity of all present and future rights to this
//software under copyright law.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
//MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
//IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
//OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
//ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//OTHER DEALINGS IN THE SOFTWARE.
//
//For more information, please refer to <http://unlicense.org>
//
//  CombosViewController.m
//  SushiCombos
//
//  Created by NEIL DINGMAN on 3/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CombosViewController.h"
#import "MasterViewController.h"

@interface CombosViewController ()

@end

@implementation CombosViewController

@synthesize name, fish, Combos;
@synthesize masterController;

-(IBAction)save:(id)sender{
    if (masterController != nil) {
        if (Combos != nil) {
            [Combos setValue:name.text forKey:@"name"];
            [Combos setValue:fish.text forKey:@"fish"];
            [masterController saveContext];
        } else {
            [masterController insertCombosWithName:name.text fish:fish.text];
        }
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)cancel:(id)sender{
     [self dismissViewControllerAnimated:YES completion:nil];
}
-(id)initWithMasterController:(MasterViewController *)aMasterController combos:(NSManagedObject *)aCombos{
    if ((self = [super init])) {
        self.masterController = aMasterController;
        self.Combos =aCombos;
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    if (Combos != nil) {
        name.text = [Combos valueForKey:@"name"];
        fish.text = [Combos valueForKey:@"fish"];
    }
    
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
