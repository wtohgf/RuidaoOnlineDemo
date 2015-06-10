//
//  ClassStudyRecord.h
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/10.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "CoreDataStorageController.h"

@interface ClassStudyRecord : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * time;
@property (nonatomic, retain) NSString * classurl;


+(instancetype)classStudyRecordWithDict:(NSDictionary*)dict;
@end
