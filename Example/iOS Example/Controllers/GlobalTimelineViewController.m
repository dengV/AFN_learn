
#import "GlobalTimelineViewController.h"

#import "Post.h"

#import "PostTableViewCell.h"



@import AFNetworking;

@interface GlobalTimelineViewController ()
@property (readwrite, nonatomic, strong) NSArray *posts;
@end

@implementation GlobalTimelineViewController

- (void)reload:(__unused id)sender {
    self.navigationItem.rightBarButtonItem.enabled = NO;

    NSURLSessionTask *task = [Post globalTimelinePostsWithBlock:^(NSArray *posts, NSError *error) {
        if (!error) {
            self.posts = posts;
            [self.tableView reloadData];
        }
    }];

    [self.refreshControl setRefreshingWithStateOfTask: task];
}

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"AFNetworking", nil);

 //   self.refreshControl = [[UIRefreshControl alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.tableView.frame.size.width, 100.0f)];
  //  [self.refreshControl addTarget:self action:@selector(reload:) forControlEvents:UIControlEventValueChanged];
    [self.tableView.tableHeaderView addSubview:self.refreshControl];

    self.tableView.rowHeight = 70.0f;
    
    [self getDataOne];
    
    
}


- (void)getDataDefault{
    [self reload:nil];
}


- (void)getDataOne{
    NSDictionary * sourceDictionary = @{
                                      @"name" : @"bang",
                                      @"phone": @{@"mobile": @"xx", @"home": @"xx"},
                                      @"families": @[@"father", @"mother"],
                                      @"nums": [NSSet setWithObjects:@"1", @"2", nil]
                                      };
    
    NSLog(@"%@\n->", sourceDictionary);
    NSArray <AFQueryStringPair *> * array = AFQueryStringPairsFromDictionary(sourceDictionary);
    
    //AFQueryStringFromParameters(sourceDictionary);
    [self printAFQueryStringPairs: array];

    NSString * strResult = AFQueryStringFromParameters(sourceDictionary);
    NSLog(@"->\n%@", strResult);
    
    
}


- (void)printAFQueryStringPairs:(NSArray <AFQueryStringPair *> *) array{
    for (AFQueryStringPair * pair in array) {
        NSLog(@"field: @%@, value: @%@", pair.field, pair.value);
    }
}



#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(__unused UITableView *)tableView
 numberOfRowsInSection:(__unused NSInteger)section
{
   // return (NSInteger)[self.posts count];
    
    
    return (7+1);
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    PostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[PostTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
   // cell.post = self.posts[(NSUInteger)indexPath.row];
    NSDictionary * sourceDictionary = @{
                                        @"name" : @"bang",
                                        @"phone": @{@"mobile": @"xx", @"home": @"xx"},
                                        @"families": @[@"father", @"mother"],
                                        @"nums": [NSSet setWithObjects:@"1", @"2", nil]
                                        };
    
    switch (indexPath.row) {
        case 7:
            {
                cell.textLabel.text = AFQueryStringFromParameters(sourceDictionary);
                return cell;
            }
        default:
            {
                NSArray <AFQueryStringPair *> * array = AFQueryStringPairsFromDictionary(sourceDictionary);
                AFQueryStringPair * pair = array[indexPath.row];
                cell.textLabel.text = [NSString stringWithFormat:@"field: @%@, value: @%@", pair.field, pair.value ];
                
                return cell;
                
            }
    }
    
    
    
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(__unused UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //return [PostTableViewCell heightForCellWithPost:self.posts[(NSUInteger)indexPath.row]];
    switch (indexPath.row) {
        case 7:
            return 150;
        default:
            return 70;
    }
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
