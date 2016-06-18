//
//  MSShareButton.m
//  Share
//
//  Created by MaShuai on 16/5/16.
//  Copyright © 2016年 司马帅帅. All rights reserved.
//

#import "MSShareButton.h"
#import "MSShareView.h"

#define kImageWH 40

@implementation MSShareButton

- (instancetype)initWithFrame:(CGRect)frame andType:(NSString *)type
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //居中对齐
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //字体
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        //字体颜色
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //设置按钮的标题
        [self setTitle:type forState:UIControlStateNormal];
        //设置按钮的图片
        [self setImageWithType:type];
    }
    return self;
}

- (void)setImageWithType:(NSString *)type
{
    UIImage *image;
    if ([type isEqualToString:ShareType_Weixin_Friends]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_weixin"];
    } else if ([type isEqualToString:ShareType_Weixin_Circle]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_weixinTimeline"];
    } else if ([type isEqualToString:ShareType_QQ_Friends]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_qqfriend"];
    } else if ([type isEqualToString:ShareType_QQ_Zone]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_qzone"];
    } else if ([type isEqualToString:ShareType_SinaWeibo]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_sinaweibo"];
    } else if ([type isEqualToString:ShareType_Message]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_sms"];
    } else if ([type isEqualToString:ShareType_Email]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_email"];
    } else if ([type isEqualToString:ShareType_Copy]) {
        image = [UIImage imageNamed:@"SocialSharePlatformIcon_copy"];
    }
    [self setImage:image forState:UIControlStateNormal];
}


//设置按钮中imageView的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    return CGRectMake((self.bounds.size.width-kImageWH)/2.0, 0, kImageWH, kImageWH);
}

//设置按钮中titleLabel的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    NSLog(@"f %f",self.bounds.size.width);
    return CGRectMake(0, kImageWH, self.bounds.size.width, self.bounds.size.height-kImageWH);
}



@end





