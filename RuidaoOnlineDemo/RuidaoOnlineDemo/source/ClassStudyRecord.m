//
//  ClassStudyRecord.m
//  RuidaoOnlineDemo
//
//  Created by hegf on 15/6/10.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#import "ClassStudyRecord.h"


@implementation ClassStudyRecord

@dynamic name;
@dynamic time;
@dynamic classurl;

+(instancetype)classStudyRecordWithDict:(NSDictionary *)dict{
    if (dict == nil) {
        return nil;
    }
    ClassStudyRecord* record = [[CoreDataStorageController sharedModel]insertElementIntoEntity:@"ClassStudyRecord"];
    if (record) {
        record.name = [dict objectForKey:@"name"];
        record.time = [dict objectForKey:@"time"];
        record.classurl = [dict objectForKey:@"url"];
    }
    return record;
}

@end
