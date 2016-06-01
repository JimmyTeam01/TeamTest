//
//  ViewController.m
//  PullWater3.0
//
//  Created by Mac on 15/10/15.
//  Copyright (c) 2015年 罗炜翔. All rights reserved.
//

#import "ViewController.h"
#import "UICollectionViewFlowWaterLayout.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,FlowWaterDelegate,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UICollectionViewFlowWaterLayout *layout = [UICollectionViewFlowWaterLayout new];
    layout.delegate = self;
    
    layout.itemWith = 180;
    layout.columnCount = 2;
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 5, 0);
    
    
    UICollectionView *collectView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    
    collectView.delegate = self;
    
    collectView.dataSource = self;
    
    collectView.backgroundColor = [UIColor whiteColor];
    
    [collectView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellID"];
    
    [self.view addSubview:collectView];
}


//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
//    return 0;
//}
//
//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
//    return 0;
//}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 20;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 80, 40)];
//    
//    label.text = [NSString stringWithFormat:@"%ld:%ld",indexPath.section,indexPath.row];
//    
//    label.backgroundColor = [UIColor greenColor];
//    
//    [cell.contentView addSubview:label];
    
    cell.backgroundColor = [UIColor yellowColor];
    
    return cell;
}


- (CGFloat)getHeight:(NSIndexPath *)indexPath {
    
    CGFloat h = arc4random()%200 + 180;
    
    return h;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
