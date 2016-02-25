//
//  ViewController.h
//  ObjectiveC_CoreData
//
//  Created by Админ on 25.02.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
}

@property (weak, nonatomic) IBOutlet UITextField *carMake;
@property (weak, nonatomic) IBOutlet UITextField *carModel;
@property (weak, nonatomic) IBOutlet UITextField *carYear;

@property (strong) NSManagedObjectModel *device;

- (IBAction)saveButton:(id)sender;
- (IBAction)dismissKeyBoard:(id)sender;

@end