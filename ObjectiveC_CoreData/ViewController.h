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

@property (weak, nonatomic) IBOutlet UILabel *carMake;
@property (weak, nonatomic) IBOutlet UILabel *carModel;
@property (weak, nonatomic) IBOutlet UILabel *carYear;

- (IBAction)saveButton:(id)sender;
- (IBAction)dismissKeyBoard:(id)sender;

@end