#import "ZundaHackWidgetsViewController.h"

@implementation ZundaHackWidgetsViewController
-(void)viewDidLoad {
    [super viewDidLoad];

    NSString *path = @"Library/HSWidgets/ZundaHackWidgets.bundle/icon.png";
    UIImage *image = [UIImage imageWithContentsOfFile:path];

    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, 0, 60, 60);

    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button addTarget:self action:@selector(OpenSite) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview: button];
}

+(HSWidgetSize)minimumSize {
    return HSWidgetSizeMake(1, 1);
}

-(void)OpenSite {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://zunda-hack.com"]];
}
@end
