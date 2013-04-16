//
//  WhereamiViewController.h
//  Whereami
//
//  Created by CLOS on 4/12/13.
//
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WhereamiViewController : UIViewController <CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
