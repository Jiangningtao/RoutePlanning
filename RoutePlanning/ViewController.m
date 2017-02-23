//
//  ViewController.m
//  RoutePlanning
//
//  Created by 姜宁桃 on 2017/2/23.
//  Copyright © 2017年 姜宁桃. All rights reserved.
//

#import "ViewController.h"
#import "MapView.h"

//获取设备的物理高度
#define screen_width [UIScreen mainScreen].bounds.size.width
//获取设备的物理宽度
#define screen_height [UIScreen mainScreen].bounds.size.height
//获取设备的物理宽高
#define screen_bounds [UIScreen mainScreen].bounds

@interface ViewController ()
{
    MapView * _mapView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configUI];
}

- (void)configUI{
    
    self.title = @"线路规划";
    [self ConfigMapView];
}

- (void)ConfigMapView{
    _mapView = [[MapView alloc] initWithFrame:CGRectMake(0, 0, screen_width, screen_height)];
    [self.view addSubview:_mapView];
    
    Place * p1 = [[Place alloc] init];
    p1.name = @"杭州市下城区华丰路317好"; // 出发地
    p1.description = @"出发地";
    
    Place * p2 = [[Place alloc] init];
    p2.name = @"青岛市市北区花好月圆小区";
    p2.description = @"目的地";
    
    
    Place * p3 = [[Place alloc] init];
    p3.name = @"杭州市西湖区西湖文化广场";
    p3.description = @"司机位置";
    
    
    [_mapView showRouteFrom:p1 to:p2 driverPlace:p3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
