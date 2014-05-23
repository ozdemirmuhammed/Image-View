//
//  ViewController.m
//  Image View
//
//  Created by Muhammed on 23.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    // imageview içinde 1 tane resim göstermek için
    /*
    _imageView.image=[UIImage imageNamed:@"image1.png"];
     */
    
    
    // imageview içerisinde bir kaç tane resmi animasyon halinde göstermek için
    NSArray *imageNames = @[@"image1.png", @"image2.png", @"image3.png"];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
   
    for (int i = 0; i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    
    _imageView.animationImages=images;
    _imageView.animationDuration = 0.5;
    // ağır çekimde göstermek için 0.5 i artırabilirsiniz.
    
    [_imageView startAnimating];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
