//
//  XiMaNetManager.h
//  BaseProject
//
//  Created by jiyingxin on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "RankingListModel.h"
#import "AlbumModel.h"
@interface XiMaNetManager : BaseNetManager
//param pageId 当前页数从1开始
//返回当前请求所在任务
+(id)getRankListWithPageId:(NSInteger)pageId kCompletionHandle;

//根据音乐组类型 ID 获取对应音乐列表
//ID 音乐组 id
//pageID 当前页数.从1开始
//return 返回当前任务所在任务

+(id)getAlbumWithId:(NSInteger)ID page:(NSInteger)pageId kCompletionHandle;
@end
