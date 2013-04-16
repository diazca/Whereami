//
//  WhereamiViewController.m
//  Whereami
//
//  Created by CLOS on 4/12/13.
//
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        //Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        [locationManager setDelegate:self];
        //And we want it to be as accuarate as possible
        //Regardless of time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
                
        //Chapter 4 Bronze Challenge
        //Only update location if device has moved more than 50 meters
        locationManager.distanceFilter = 50;
        
        //Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
        
        //Tell our manager to start looking for its heading immediately
        [locationManager startUpdatingHeading];
    }
    
    return self;
}

-(void)locationManager:(CLLocationManager *)manager
        didUpdateToLocation:(CLLocation *)newLocation
          fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@",newLocation);
}

-(void)locationManager:(CLLocationManager *)manager
        didFailWithError:(NSError *)error
{
    NSLog(@"Could not find locationn %@",error);
}
-(void)locationManager:(CLLocationManager *)manager
        didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"%@",newHeading);
}
-(void)dealloc
{
    //Tell the location manager to stop sending messages to us
    [locationManager setDelegate:nil];
}


@end
