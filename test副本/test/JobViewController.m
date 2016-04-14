//
//  JobViewController.m
//  test
//
//  Created by yyx on 16/3/19.
//  Copyright © 2016年 yyx. All rights reserved.
//

#import "JobViewController.h"



@interface JobViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
{
    UICollectionView * _collectionView;
}
@end

@implementation JobViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self creatLable];
    [self creatCollectionView];
    // Do any additional setup after loading the view.
}
//推荐  最新 最热  label
-(void)creatLable{
    NSArray * titleArr = @[@"职位",@"最新",@"最热"];
    
    CGFloat labelWidth = self.view.frame.size.width/3;
    for (NSInteger i = 0; i < 3; i++) {
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeOffset:)];
        UILabel * label = [[UILabel alloc] init];
        label.userInteractionEnabled = YES;
        label.backgroundColor = [UIColor whiteColor];
        label.frame = CGRectMake(i * labelWidth, 64, labelWidth, 30);
        label.text = titleArr[i];
        label.tag = 10000 + i;
        label.textAlignment = NSTextAlignmentCenter;
        [label addGestureRecognizer:tap];
        [self.view addSubview:label];
    }
    
}
//创建collectionview
-(void)creatCollectionView{
    
    _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 94, self.view.frame.size.width,self.view.frame.size.height - 64) collectionViewLayout:[self creatLayout]];
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"aaa"];
    _collectionView.pagingEnabled = YES;
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    [self.view addSubview:_collectionView];
    
}
//布局collectionview的每一个item
-(UICollectionViewFlowLayout*)creatLayout{
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 0.3;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = CGSizeMake(self.view.frame.size.width,self.view.frame.size.height);
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0,0);
    return layout;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 3;
}
-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"aaa" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor brownColor];
    
    return cell;
    
    
}
-(void)changeOffset:(UITapGestureRecognizer*)tap{
    
    NSInteger index = tap.view.tag;
    switch (index) {
        case 10000:
            _collectionView.contentOffset = CGPointMake(0, 0);
            break;
         case 10001:
            _collectionView.contentOffset = CGPointMake(self.view.frame.size.width, 0);
            break;
        case 10002:
            _collectionView.contentOffset = CGPointMake(_collectionView.frame.size.width * 2, 0);
            
            break;
        default:
            break;
    }
    NSLog(@"hahahah");
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
