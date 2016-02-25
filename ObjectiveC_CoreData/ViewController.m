//
//  ViewController.m
//  ObjectiveC_CoreData
//
//  Created by Админ on 25.02.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize device;

-(NSManagedObjectContext *) managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector: @selector(managedObjectContext)])
        context = [delegate managedObjectContext];
    return context;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.device) {
        [self.carMake setText: [self.device valueForKey: @"text1"]];
        [self.carModel setText: [self.device valueForKey: @"text2"]];
        [self.carYear setText: [self.device valueForKey: @"text3"]];
    }
}

- (IBAction)saveButton:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (self.device) {
        [self.device setValue: self.carMake.text forKey: @"text1"];
        [self.device setValue: self.carModel.text forKey: @"text2"];
        [self.device setValue: self.carYear.text forKey: @"text3"];
    } else {
        NSManagedObject *newDevice = [NSEntityDescription insertNewObjectForEntityForName: @"Device" inManagedObjectContext: context];
        [newDevice setValue:self.carMake.text forKey: @"text1"];
        [newDevice setValue:self.carModel.text forKey: @"text2"];
        [newDevice setValue:self.carYear.text forKey: @"text3"];
    }
    
    NSError *error = nil;
    if (![context save:&error])
        NSLog(@"%@ %@", error, [error localizedDescription]);
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)dismissKeyBoard:(id)sender {
    [self resignFirstResponder];
}

@end








