//
//  FirstViewController.m
//  ios-trainning-exercise
//
//  Created by Treinamento Mobile on 10/26/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label1;
@property (nonatomic, weak) IBOutlet UITextField *text1;
@property (nonatomic, weak) IBOutlet UIButton *button1;

@end

@implementation FirstViewController


- (IBAction)sendNotification:(id)sender{
    
    NSDictionary *obj=@{ @"Sender": @" From item 1", @"Message" :self.text1.text};
    
    // Post a notification
    [[NSNotificationCenter defaultCenter] postNotificationName:@"my_custom_notification"
                                                        object:obj];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:@"my_custom_notification"
                                               object:nil];
}

-(void)handleNotification:(NSNotification *)notification{
    NSLog(@"Event triggered");}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
