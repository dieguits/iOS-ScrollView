//
//  ViewController.m
//  ScrollViewEx
//
//  Created by Dieguits&Priss on 23/06/15.
//  Copyright (c) 2015 co.edu.unab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize txtEste = _txtEste, txtUltimo = _txtUltimo, Scroll = _Scroll;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * Method for move the scroll when the keyboard appear.
 *
 * @date 06/24/2015
 * @author Diego.Perez.
 **/
-(void) moveScroll:(BOOL)up num:(int)num {
    
    NSLog(@"Numero del metodo -> %i ", num);
    /*int movementDistance;
    if (up) {
        movementDistance = num; // lo que sea necesario, en mi caso yo use 80
    }else {
        movementDistance = -num;
    }
    const int minusMovementDistance = -num;*/
    
    const float movementDuration = 0.3f; // lo que sea necesario
    
    int movement = 0;// = (up ? minusMovementDistance : movementDistance);
    if(up) {
        movement = -num;
    }else {
        movement = num;
    }
    
    self.view.frame = CGRectOffset(self.view.frame, 0, 0);
    
    [UIView beginAnimations: @"anim" context: nil];
    [UIView setAnimationBeginsFromCurrentState: YES];
    [UIView setAnimationDuration: movementDuration];
    self.view.frame = CGRectOffset(self.view.frame, 0, movement);
    [UIView commitAnimations];
}

-(void)moveFrameCero {
    self.view.frame = CGRectOffset(self.view.frame, 0, 0);
    self.Scroll.frame = CGRectOffset(self.Scroll.frame, 0, 0);
    _Scroll.frame = CGRectOffset(self.Scroll.frame, 0, 0);

    
    //_Scroll.bounds.origin = CGPointCreateDictionaryRepresentation(0);
    NSLog(@"%@", _Scroll.frame.origin);
}

-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    NSLog(@"Hizo algo");
}

/**
 * Methor for call moverScroll when the textBox ir begin to editing.
 *
 * @date 06/24/2015.
 * @author Diego.Perez.
 **/
- (IBAction)BeginEdit1:(id)sender {
    //[self moveScroll:YES num:250];
    [self moveFrameCero];
}

- (IBAction)EndEdit1:(id)sender {
    //[self moveScroll:NO num:250];
    [self moveFrameCero];
}

- (IBAction)BeginEdit2:(id)sender {
    [self moveScroll:YES num:200];
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [_txtEste resignFirstResponder];
    [_txtUltimo resignFirstResponder];
}

@end
