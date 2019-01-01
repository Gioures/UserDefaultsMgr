//
//  UserDefaultsMgr.swift
//  DZMeBookRead
//
//  Created by 邓泽淼 on 2017/5/11.
//  Copyright © 2017年 DZM. All rights reserved.
//

import UIKit

@objc class UserDefaultsMgr: NSObject {

    // MARK: -- 清理 NSUserDefaults
    
    /// 清空 NSUserDefaults
   @objc class func UserDefaultsClear() {
        
        let defaults:UserDefaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        
        for key in dictionary.keys {
            defaults.removeObject(forKey: key)
            defaults.synchronize()
        }
    }
    
    /// 删除 对应Key 的值
   @objc class func removeObjectForKey(_ key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.removeObject(forKey: key)
        defaults.synchronize()
    }
    
    // MARK: -- 存
    
    /// 存储Object
   @objc class func setObject(_ value:Any?,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    
    /// 存储String
    @objc class func setString(_ value:String?,key:String) {
        UserDefaultsMgr.setObject(value, key: key)
    }
    
    /// 存储NSInteger
   @objc class func setInteger(_ value:NSInteger,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    
    /// 存储Bool
   @objc class func setBool(_ value:Bool,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    
    /// 存储Float
   @objc class func setFloat(_ value:Float,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    
    /// 存储Double
   @objc class func setDouble(_ value:Double,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
        defaults.synchronize()
    }
    
    /// 存储URL
   @objc class func setURL(_ value:URL?,key:String) {
        let defaults:UserDefaults = UserDefaults.standard
        defaults.set(value, forKey: key)
    
        defaults.synchronize()
    }
    
    // MARK: -- 取
    
    /// 获取Object
   @objc class func objectForKey(_ key:String) -> Any? {
        let defaults:UserDefaults = UserDefaults.standard
        return defaults.object(forKey: key)
    }
    
    /// 获取String
    @objc class func stringForKey(_ key:String) -> String? {
        let defaults:UserDefaults = UserDefaults.standard
        guard let string = defaults.object(forKey: key) as? String else {
            return nil
        }
        return string
    }
    
    /// 获取Bool
    @objc class func boolForKey(_ key:String) -> Bool {
        let defaults:UserDefaults = UserDefaults.standard
        guard let ok = defaults.bool(forKey: key) as? Bool else { return false }
        return ok
    }
    
    /// 获取NSInteger
   @objc class func integerForKey(_ key:String) -> NSInteger {
        let defaults:UserDefaults = UserDefaults.standard
        return defaults.integer(forKey: key)
    }
    
    /// 获取Float
   @objc class func floatForKey(_ key:String) -> Float {
        let defaults:UserDefaults = UserDefaults.standard
        return defaults.float(forKey: key)
    }
    
    /// 获取Double
   @objc class func doubleForKey(_ key:String) -> Double {
        let defaults:UserDefaults = UserDefaults.standard
        return defaults.double(forKey: key)
    }
    
    /// 获取URL
   @objc class func URLForKey(_ key:String) -> URL? {
        let defaults:UserDefaults = UserDefaults.standard
        return defaults.url(forKey: key)
    }

}
