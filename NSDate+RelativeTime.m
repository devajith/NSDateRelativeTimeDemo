//  NSDate+RelativeTime.m
//  Created by Ajith Kumar on 09/08/15.


#import "NSDate+RelativeTime.h"

@implementation NSDate (RelativeTime)
-(NSString *)findRelativeTimeString{
    
    NSDate* date = self;
    NSDate *now = [NSDate date];
    double time = [date timeIntervalSinceDate:now];
    time *= -1;
    if (time < 60) {
        int diff = round(time);
        if (diff == 1)
            return @"1 second ago";
        return [NSString stringWithFormat:@"%d seconds ago", diff];
    } else if (time < 3600) {
        int diff = round(time / 60);
        if (diff == 1)
            return @"1 minute ago";
        return [NSString stringWithFormat:@"%d minutes ago", diff];
    } else if (time < 86400) {
        int diff = round(time / 60 / 60);
        if (diff == 1)
            return @"1 hour ago";
        return [NSString stringWithFormat:@"%d hours ago", diff];
    } else if (time < 604800) {
        int diff = round(time / 60 / 60 / 24);
        if (diff == 1)
            return @"yesterday";
        if (diff == 7)
            return @"a week ago";
        return[NSString stringWithFormat:@"%d days ago", diff];
    } else {
        int diff = round(time / 60 / 60 / 24 / 7);
        if (diff == 1)
            return @"a week ago";
        return [NSString stringWithFormat:@"%d weeks ago", diff];
    }
    return @"---";
}
@end
