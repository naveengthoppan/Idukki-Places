//
//  PlacesCellTableViewCell.h
//  Places Dynamic
//
//  Created by qbuser on 1/20/15.
//  Copyright (c) 2015 qbuser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlacesCellTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *thumbnailview;
@property (strong, nonatomic) IBOutlet UILabel *placesLabel;
@property (strong, nonatomic) IBOutlet UIImageView *ratingsView;

@end
