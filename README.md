CKViewPager
============

Easily create beautiful sliding tabs. 

CKViewPager is also available in [Swift](https://github.com/lucoceano/Pager)

<img src="https://raw.githubusercontent.com/lucoceano/CKViewPager/master/Resources/screen1.png"  alt="CKViewPager" title="CKViewPager">
![Demo](https://raw.githubusercontent.com/lucoceano/CKViewPager/master/Resources/CKViewPager.gif)

## Installation

#### CocoaPods

 `pod 'CKViewPager'`

#### Copying files

Just copy ViewPagerController.m and ViewPagerController.h files to your project.

## Usage

Subclass ViewPagerController (as it's a `UIViewController` subclass) and implement dataSource and delegate methods in the subclass.

In the subclass assign self as dataSource and delegate, 

```Objective-C
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.dataSource = self;
    self.delegate = self;
}
```

### Methods

Then implement dataSource and delegate methods.
```Objective-C
#pragma mark - ViewPagerDataSource
- (NSUInteger)numberOfTabsForViewPager:(ViewPagerController *)viewPager {
    return 10;
}
```
Returns the number of tabs that will be present in ViewPager.

```Objective-C
#pragma mark - ViewPagerDataSource
- (UIView *)viewPager:(ViewPagerController *)viewPager viewForTabAtIndex:(NSUInteger)index {

    UILabel *label = [UILabel new];
    label.text = [NSString stringWithFormat:@"Tab #%i", index];
    [label sizeToFit];
    
    return label;
}
```
Returns the view that will be shown as tab. Create a `UIView` object (or any `UIView` subclass object) and give it to ViewPager and it will use it as tab view.

```Objective-C
#pragma mark - ViewPagerDataSource
- (UIViewController *)viewPager:(ViewPagerController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index {
    
    UIViewController *viewController = [UIViewController alloc] init];
    
    return viewController;
}
```
Returns the view controller that will be shown as content. Create a `UIViewController` object (or any `UIViewController` subclass object) and give it to ViewPager and it will use the `view` property of the view controller as content view.

Alternatively, you can implement `- viewPager:contentViewForTabAtIndex:` method and return a `UIView` object (or any `UIView` subclass object) and ViewPager will use it as content view.

The `- viewPager:contentViewControllerForTabAtIndex:` and `- viewPager:contentViewForTabAtIndex:` dataSource methods are both defined optional. But, you should implement at least one of them! They are defined as optional to provide you an option.

All delegate methods are optional.

```Objective-C
- (void)viewPager:(ViewPagerController *)viewPager didChangeTabToIndex:(NSUInteger)index {
    // Do something useful
}
```
ViewPager will alert your delegate object via `- viewPager:didChangeTabToIndex:` method, so that you can do something useful.

### Customize
```Objective-C
    self.indicatorColor = [[UIColor redColor] colorWithAlphaComponent:0.64];
	self.tabsViewBackgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.32];
	self.contentViewBackgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.32];

	self.startFromSecondTab = NO;
	self.centerCurrentTab = NO;
	self.tabLocation = ViewPagerTabLocationTop;
	self.tabHeight = 49;
	self.tabOffset = 36;
	self.tabWidth = UIInterfaceOrientationIsLandscape(self.interfaceOrientation) ? 128.0f : 96.0f;
	self.fixFormerTabsPositions = NO;
	self.fixLatterTabsPositions = NO;
	self.shouldAnimateIndicator = ViewPagerIndicatorAnimationWhileScrolling;
```
Check [ViewPagerController.h](https://github.com/lucoceano/CKViewPager/blob/master/CKViewPager/CKViewPager/ViewPagerController.h) to see all options.

## Requirements

ViewPager supports minimum **iOS 6** and uses **ARC**.

Supports both **iPhone and iPad**.

## Contact

[Lucas Martins](mailto:lucoceano@ckl.io) - [ckl.io](http://www.ckl.io)

This lib is based on [ICViewPager](https://github.com/iltercengiz/ICViewPager)

## Licence
CKViewPager is MIT licensed. See the LICENCE file for more info.
