//
//  SelectPayUMoneyViewController.m
//  PaymentGateway
// Paddy Walghudee
//

#import "SelectPayUMoneyViewController.h"
#import "MyManger.h"


@interface SelectPayUMoneyViewController ()


@end

@implementation SelectPayUMoneyViewController

- (void)viewDidLoad {
    
   
    
//        NSString *amount = @"1.0";
//        NSString *productInfo = @"Denim Jeans";
//        NSString *firstname = @"";
//    
//        NSString *email = [NSString stringWithFormat:@"Pradip Walghude%d@yopmail.com",i]; // Generated a fake mail id for testing
//        NSString *phone = @"9762159571";
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)PayUsingPayUMoney:(id)sender {
    
    MyManger *manger =[MyManger sharedManager];
//    manger.productPrice = @"1.0";
//    manger.productInfo = @"Denim Jeans";
//    manger.payeeName = @"Paddy Walghudee";
//    manger.mobileNumber= @"9552520009";
//    
    
    UITextField *textfiled = (UITextField *)[self.view viewWithTag:3];
    manger.productPrice =textfiled.text;
    textfiled = (UITextField *)[self.view viewWithTag:2];
    
    manger.productInfo = textfiled.text;
    textfiled = (UITextField *)[self.view viewWithTag:1];
    
    manger.payeeName = textfiled.text;
    manger.mobileNumber= @"8983517524";
    
    NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"PaymentPageScreenID"];
//    [self presentViewController:vc animated:YES completion:nil];
    [self.navigationController pushViewController:vc animated:YES];
    
}

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
