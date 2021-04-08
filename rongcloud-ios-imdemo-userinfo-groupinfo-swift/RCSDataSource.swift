//
//  RCSDataSource.swift
//  rongcloud-ios-imdemo-userinfo-groupinfo-swift
//
//  Created by Jue on 2021/4/7.
//

import UIKit

class RCSDataSource: NSObject, RCIMUserInfoDataSource, RCIMGroupInfoDataSource {
    static let sharedInstance = RCSDataSource()
    
    func getUserInfo(withUserId userId: String!, completion: ((RCUserInfo?) -> Void)!) {
        // 代码写死 tester2 是为了方便演示，实际需要判断 userId，去应用服务器请求头像和昵称来构造 RCUserInfo 对象
        if userId == "tester2" {
            let userInfo = RCUserInfo.init(userId: userId, name: "索隆", portrait: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=713970107,27737646&fm=26&gp=0.jpg")
            completion(userInfo)
        }
    }
    
    func getGroupInfo(withGroupId groupId: String!, completion: ((RCGroup?) -> Void)!) {
        // 代码写死 group1 是为了方便演示，实际需要判断 groupId，去应用服务器请求群组头像和群组名称来构造 RCGroup 对象
        if groupId == "group1" {
            let groupInfo = RCGroup.init(groupId: groupId, groupName: "草帽儿海贼团", portraitUri: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2204062690,4223248473&fm=26&gp=0.jpg")
            completion(groupInfo)
        }
    }
    
    func configCurrentUserInfo(userId:String!) {
        RCIM.shared()?.currentUserInfo = RCUserInfo.init(userId: userId, name: "路飞", portrait: "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3513856114,2681775620&fm=26&gp=0.jpg")
    }
    
}
