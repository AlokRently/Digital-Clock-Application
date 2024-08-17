//
//  AppDelegate.h
//  Digital Clock Application
//
//  Created by Rently Coimbatore on 17/08/24.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

