//
//  NEULog.h
//  iCloundDemo
//
//  Created by hegf on 15/6/4.
//  Copyright (c) 2015年 hegf. All rights reserved.
//

#ifndef iCloundDemo_NEULog_h
#define iCloundDemo_NEULog_h

#ifdef DEBUG
# define NEULog(fmt, ...) NSLog((@"[file:%s]" "[line:%d] \n" fmt), __FILE__, __LINE__, ##__VA_ARGS__);
#else
# define NEULog(...);
#endif

#endif
