//
//  ViewController.m
//  SudukuTest
//
//  Created by myjawdrops on 16/12/7.
//  Copyright © 2016年 MyJawDrops. All rights reserved.
//

#import "ViewController.h"
#import "JJSudoku.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SudokuItem *item0 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog1"];
    SudokuItem *item1 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog2"];
    SudokuItem *item2 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog3"];
    SudokuItem *item3 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog4"];
    SudokuItem *item4 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog3"];
    SudokuItem *item5 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog2"];
    SudokuItem *item6 = [[SudokuItem alloc] initWithImageName:@"dog1" highLighted:@"dog1"];
 
    
    NSArray *items = @[item0,item1,item2,item3,item4,item5,item6];
//    JJSudoku *sudoku = [[JJSudoku alloc] initWithItems:items];
    JJSudoku *sudoku = [[JJSudoku alloc] init];
    sudoku.items = items;
    CGSize size = [JJSudoku sizeWithItemCount:7];
    sudoku.backgroundColor = [UIColor grayColor];
    sudoku.frame = CGRectMake(0, 20,size.width, size.height);
    [self.view addSubview:sudoku];
    
    sudoku.selectedItem = ^(JJSudoku *sudoku, NSInteger index){
        NSLog(@"item-%zd clicked!",index);
    };
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
