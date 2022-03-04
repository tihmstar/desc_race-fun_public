//
//  ViewController.m
//  Desc Race Test
//
//  Created by CoolStar on 3/3/22.
//

#import "ViewController.h"
#import <sys/sysctl.h>

void desc_race(void);

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    uint64_t mem;
    size_t len = sizeof(uint64_t);
    sysctlbyname("hw.memsize", &mem, &len, NULL, 0);
    printf("Mem: %lld\n", mem);
    
    desc_race();
    // Do any additional setup after loading the view.
}


@end
