//
//  ViewController.h
//  ScrollViewEx
//
//  Created by Dieguits&Priss on 23/06/15.
//  Copyright (c) 2015 co.edu.unab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)BeginEdit1:(id)sender;
- (IBAction)EndEdit1:(id)sender;
- (IBAction)BeginEdit2:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtEste;
@property (strong, nonatomic) IBOutlet UITextField *txtUltimo;
@property (strong, nonatomic) IBOutlet UIScrollView *Scroll;

@end

