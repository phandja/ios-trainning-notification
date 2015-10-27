//
//  FourthViewController.m
//  ios-trainning-exercise
//
//  Created by Treinamento Mobile on 10/26/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()
@property (nonatomic, weak) IBOutlet UILabel *label4;
@property (nonatomic, weak) IBOutlet UITextField *text4;
@property (nonatomic, weak) IBOutlet UIButton *button4;
@end

@implementation FourthViewController

- (IBAction)sendNotification:(id)sender{
    
    NSDictionary *obj=@{ @"Sender": @" From item 4", @"Message" :self.text4.text};
    
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
