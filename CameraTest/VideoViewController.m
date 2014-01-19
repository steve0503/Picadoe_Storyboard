//
//  VideoViewController.m
//  CameraTest
//
//  Created by 이 해용 on 2014. 1. 16..
//  Copyright (c) 2014년 iamdreamer. All rights reserved.
//

#import "VideoViewController.h"

#import <MediaPlayer/MediaPlayer.h>

#import  <MobileCoreServices/MobileCoreServices.h>

@interface VideoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(IBAction)getImage:(id)sender;

-(IBAction)takePictur:(id)sender;

-(void)takeVideo;

@end

@implementation VideoViewController

-(IBAction)takePictur:(id)sender{
    
    
    [self takeVideo];
    
}

-(void)takeVideo{
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //에러 처리
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"오류" message:@"카메라가 지원되지 않는 기종입니다." delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
        [alert show];
    }
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.mediaTypes = [[NSArray alloc]initWithObjects:(NSString*)kUTTypeMovie, nil];
    
    
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    
}

- (IBAction)getImage:(id)sender {
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    
    imagePicker.delegate = self;
    
    imagePicker.allowsEditing = YES;
    
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage *editImage = [info objectForKey:UIImagePickerControllerEditedImage];
    
    UIImage *originalImage = [info objectForKey:UIImagePickerControllerEditedImage];
    
    UIImage *usingImage = (nil == editImage)?originalImage:editImage;
    
    self.imageView.image = usingImage;
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}


@end
