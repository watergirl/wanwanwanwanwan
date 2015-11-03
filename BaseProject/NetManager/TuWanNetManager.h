//
//  TuWanNetManager.h
//  BaseProject
//
//  Created by jiyingxin on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
//只要公用一个解析类的请求，就可以合起来写，只需要使用枚举变量，来决定不同的请求地址即可
//如果不会 可以参考汽车之家接口
typedef NS_ENUM(NSUInteger, InfoType) {
    InfoTypeTouTiao,        //头条
    InfoTypeDuJa,    //独家,幻化
    InfoTypeHuanHua,
    InfoTypeAnHei,//暗黑
    InfoTypeMoShou,//魔兽风暴炉石
    InfoTypeFengBao,
    InfoTypeLuShi,
    InfoTypeCOS,// cos
    InfoTypeXingJi,// 星际守望
    InfoTypeShouWang,
    InfoTypeTuPian,//图片视频攻略
    InfoTypeShiPin,
    InfoTypeGongLue,
    InfoTypeMeiNv,//美女
    InfoTypeQuWen//趣闻
    
};
@interface TuWanNetManager : BaseNetManager

+(id)getTuWanInfoWithType:(InfoType)type start:(NSString *)start kCompletionHandle ;

  
    
    


@end











