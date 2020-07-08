#import "ZundaHackWidgetsViewController.h"

@implementation ZundaHackWidgetsViewController
-(void)viewDidLoad {
    [super viewDidLoad];
    // add custom view
    self.subView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];

    NSString *path = @"Library/HSWidgets/TestWidgets.bundle/icon.png";
    UIImage *image = [UIImage imageWithContentsOfFile:path];

    UIButton *button = [[UIButton alloc] init];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 0, 60, 60);

    [button addTarget:self action:@selector(OpenSite) forControlEvents:UIControlEventTouchDown];

    [self.subView addSubview:button];
    [self.view addSubview: self.subView];
    
}

+(HSWidgetSize)minimumSize {
    return HSWidgetSizeMake(1, 1); // least amount of rows and cols the widget needs
}

-(void)OpenSite {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://zunda-hack.com"]];
}
@end
