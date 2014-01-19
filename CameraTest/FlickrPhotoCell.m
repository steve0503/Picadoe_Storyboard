//
//  FlickrPhotoCell.m
//  CameraTest
//
//  Created by SDT-1 on 2014. 1. 16..
//  Copyright (c) 2014년 iamdreamer. All rights reserved.
//

#import "FlickrPhotoCell.h"
#import "FlickrPhoto.h"

@implementation FlickrPhotoCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)setPhoto:(FlickrPhoto *)photo {
    if(_photo != photo) {
        _photo = photo;
    }
    
    self.imageView.image = _photo.thumbnail;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
