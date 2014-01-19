//
//  CameraViewController.m
//  CameraTest
//
//  Created by SDT-1 on 2014. 1. 14..
//  Copyright (c) 2014년 iamdreamer. All rights reserved.
//

#import "CameraViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import  <MobileCoreServices/MobileCoreServices.h>

@interface CameraViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(IBAction)getImage:(id)sender;

-(IBAction)takePictur:(id)sender;

-(void)takePicture;

@end

@implementation CameraViewController

-(IBAction)takePictur:(id)sender{
    
    
    [self takePicture];
    
}

-(void)takePicture{
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //에러 처리
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"오류" message:@"카메라가 지원되지 않는 기종입니다." delegate:nil cancelButtonTitle:@"확인" otherButtonTitles:nil];
        [alert show];
    }
    
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    imagePicker.delegate = self;
    imagePicker.allowsEditing = YES;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.mediaTypes = [[NSArray alloc ]initWithObjects:(NSString*)kUTTypeImage,nil];
    
    
    //    imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSour];
    
    
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

#if 0
// For responding to the user tapping Cancel.
- (void) imagePickerControllerDidCancel: (UIImagePickerController *) picker {
    
    [[picker parentViewController] dismissViewControllerAnimated:YES completion:nil];
    
}

#endif 


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

    
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    
    // Dispose of any resources that can be recreated.
}

@end
