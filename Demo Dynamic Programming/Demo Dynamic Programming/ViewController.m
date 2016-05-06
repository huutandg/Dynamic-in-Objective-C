//
//  ViewController.m
//  Demo Dynamic Programming
//
//  Created by Tan on 5/5/16.z
//  Copyright © 2016 Tan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *pet;
@property (weak, nonatomic) IBOutlet UIButton *show;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@interface Cat : NSObject
@end
@implementation Cat
@end

@interface Dog : NSObject
@end
@implementation Dog

@end

@interface Horse : NSObject
@end
@implementation Horse

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)showMe:(id)sender {
    NSString* text = self.pet.text;
    Class class = NSClassFromString(text);
    if (class == nil) {
        self.image.image = [UIImage imageNamed:@"alert.png"];
        
    } else {
        self.image.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",text]];
    }
}

@end
