//
//  FlickrPhotoCell.h
//  CameraTest
//
//  Created by SDT-1 on 2014. 1. 16..
//  Copyright (c) 2014년 iamdreamer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class FlickrPhoto;

@interface FlickrPhotoCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@property (nonatomic, strong) FlickrPhoto *photo;
-(void)setPhoto:(FlickrPhoto *)photo;

@end





