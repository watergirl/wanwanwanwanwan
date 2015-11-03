//
//  TuWanNetManager.m
//  BaseProject
//
//  Created by jiyingxin on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "TuWanNetManager.h"
#import "TuWanModel.h"
#define kTuWanPath  @"http://cache.tuwan.com/app/"
#define kAppId      @"appid": @1
#define kAppVer     @"appver": @2.1
#define kClassMore @"classmore":@"indexpic"

#define kRemoveClassMore(dic) [dic removeObjectForKey:@"classmore"];
#define kSetDtId(string, dic)  [dic setObject:string forKey:@"dtid"];
#define kSetClass(string, dic) [dic setObject:string forKey:@"class"];
#define kSetMod(string, dic)  [dic setObject:string forKey:@"mod"];
@implementation TuWanNetManager

+(id)getTuWanInfoWithType:(InfoType)type start:(CGFloat)start completionHandle:(void (^)(id, NSError *))completionHandle{
    
    NSMutableDictionary *parmas = [NSMutableDictionary dictionaryWithDictionary:@{kAppVer,kAppId,@"start":@(start),kClassMore}];
    //把所有公共接口放到 switch 外面
    
    switch (type) {
            
        case InfoTypeCOS:
            
            kSetClass(@"cos", parmas)
            kSetDtId(@"0", parmas)
            kSetMod(@"cos", parmas)

            break;
    
        case InfoTypeAnHei:
    kSetDtId(@"83623", parmas)
            
            break;

        case InfoTypeTouTiao:
            
            break;
        case InfoTypeLuShi:
          kSetDtId(@"31528", parmas)
            break;
        case InfoTypeMeiNv:
            kSetClass(@"heronews", parmas)
            kSetMod(@"美女",  parmas)
            [parmas setObject:@"cos1" forKey:@"typechild"];
            break;
        case InfoTypeQuWen:
            kSetDtId(@"0", parmas)
            kSetClass(@"heronews", parmas)
            kSetMod(@"趣闻", parmas)
            
            break;
        case InfoTypeMoShou:
            kSetDtId(@"31537", parmas)
            
            break;
        case InfoTypeShiPin:
            [parmas setObject:@"video" forKey:@"type"];
            break;
        case InfoTypeDuJa:
            kRemoveClassMore(parmas)
            kSetMod(@"八卦", parmas)
            kSetClass(@"heronews", parmas)

            break;
        case InfoTypeTuPian:
            kSetDtId(@"83623,31528,31537,31538,57067,91821", parmas)
            kRemoveClassMore(parmas)
            [parmas setObject:@"pic" forKey:@"type"];

            break;
        case InfoTypeXingJi:
            kRemoveClassMore(parmas)
            kSetDtId(@"91821", parmas)
            break;
        case InfoTypeFengBao:
            kSetDtId(@"31538", parmas)
            break;
        case InfoTypeGongLue:
            [parmas setObject:@"guide" forKey:@"type"];
            break;
        case InfoTypeHuanHua:
            kRemoveClassMore(parmas)
            kSetClass(@"heronews", parmas)
            kSetMod(@"幻化", parmas)
            break;
        case InfoTypeShouWang:
            kRemoveClassMore(parmas)
            kSetDtId(@"57067", parmas)

            break;
            
        default:
            break;
    }
    NSString *path = [self percentPathWithPath:path params:parmas];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([TuWanModel objectWithKeyValues:responseObj],error);
    }];
   

}



@end
