//
//  DuoWanNetManager.m
//  BaseProject
//
//  Created by jiyingxin on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DuoWanNetManager.h"
//很多具有共同点的东西，可以统一宏定义，比如
//凡是自己写的宏定义 都需要用k开头，这是编码习惯
#define kOSType       @"OSType":@"iOS9.1" //9.1是当前手机系统版本，需要到info文件中去取
//把path写到文件头部，使用宏定义形势。 方便后期维护
#define kHeroPath         @"http://lolbox.duowan.com/phone/apiHeroes.php"    //免费+全部英雄
#define kHeroSkinPath     @"http://box.dwstatic.com/apiHeroSkin.php" //英雄皮肤
#define  kHeroVideoPath   @"http://box.dwstatic.com/apiVideoesNormalDuowan.php"
#define kHeroCZPath       @"http://db.duowan.com/lolcz/img/ku11/api/lolcz.php"
#define kHeroDetailPath   @"http://lolbox.duowan.com/phone/apiHeroDetail.php"
#define kHeroGiftPath     @"http://box.dwstatic.com/apiHeroSuggestedGiftAndRun.php"
#define kHeroChangePath   @"http://db.duowan.com/boxnews/heroinfo.php"
#define kHeroWeekDataPath @"http://183.61.12.108/apiHeroWeekData.php"
#define kToolMenuPath     @"http://box.dwstatic.com/apiToolMenu.php"
#define kZBCategoryPath   @"http://lolbox.duowan.com/phone/apiZBCategory.php"
#define kZBItemPath       @"http://lolbox.duowan.com/phone/apiZBItemList.php"
#define kItemDetailPath   @"http://lolbox.duowan.com/phone/apiItemDetail.php"
#define kGiftPath         @"http://lolbox.duowan.com/phone/apiGift.php"
#define kRunePath         @"http://lolbox.duowan.com/phone/apiRunes.php"
#define kSumAbilityPath   @"http://lolbox.duowan.com/phone/apiSumAbility.php"
#define kBestGroupPath    @"http://box.dwstatic.com/apiHeroBestGroup.php"

@implementation DuoWanNetManager

@end












