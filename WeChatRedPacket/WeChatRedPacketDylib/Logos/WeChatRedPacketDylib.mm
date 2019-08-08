#line 1 "/Users/chenfanfang/Desktop/PersonalGitProject/iOS/WeChatRedPacket/WeChatRedPacket/WeChatRedPacketDylib/Logos/WeChatRedPacketDylib.xm"
#import "WeChatRedEnvelop.h"
#import "WeChatRedEnvelopParam.h"
#import "WBSettingViewController.h"
#import "WBReceiveRedEnvelopOperation.h"
#import "WBRedEnvelopTaskManager.h"
#import "WBRedEnvelopConfig.h"
#import "WBRedEnvelopParamQueue.h"



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CContactMgr; @class CMessageMgr; @class WCRedEnvelopesLogicMgr; @class WCTableViewSectionManager; @class WCTableViewCellManager; @class CMessageWrap; @class WCBizUtil; @class NewSettingViewController; @class MMServiceCenter; 
static void (*_logos_orig$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$)(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, HongBaoRes *, HongBaoReq *); static void _logos_method$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL, HongBaoRes *, HongBaoReq *); static unsigned int _logos_method$_ungrouped$WCRedEnvelopesLogicMgr$calculateDelaySeconds(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, NSString *, CMessageWrap *); static void _logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, NSString *, CMessageWrap *); static void (*_logos_orig$_ungrouped$CMessageMgr$onRevokeMsg$)(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void _logos_method$_ungrouped$CMessageMgr$onRevokeMsg$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST, SEL, CMessageWrap *); static void (*_logos_orig$_ungrouped$NewSettingViewController$reloadTableData)(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$reloadTableData(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$NewSettingViewController$setting(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST, SEL); 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CMessageWrap(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CMessageWrap"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$CContactMgr(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("CContactMgr"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCBizUtil(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCBizUtil"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCTableViewCellManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCTableViewCellManager"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WCTableViewSectionManager(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WCTableViewSectionManager"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MMServiceCenter(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MMServiceCenter"); } return _klass; }
#line 10 "/Users/chenfanfang/Desktop/PersonalGitProject/iOS/WeChatRedPacket/WeChatRedPacket/WeChatRedPacketDylib/Logos/WeChatRedPacketDylib.xm"


static void _logos_method$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, HongBaoRes * arg1, HongBaoReq * arg2) {
    
    _logos_orig$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$(self, _cmd, arg1, arg2);
    
    
    if (arg1.cgiCmdid != 3) { return; }
    
    NSString *(^parseRequestSign)() = ^NSString *() {
        NSString *requestString = [[NSString alloc] initWithData:arg2.reqText.buffer encoding:NSUTF8StringEncoding];
        NSDictionary *requestDictionary = [_logos_static_class_lookup$WCBizUtil() dictionaryWithDecodedComponets:requestString separator:@"&"];
        NSString *nativeUrl = [[requestDictionary stringForKey:@"nativeUrl"] stringByRemovingPercentEncoding];
        NSDictionary *nativeUrlDict = [_logos_static_class_lookup$WCBizUtil() dictionaryWithDecodedComponets:nativeUrl separator:@"&"];
        
        return [nativeUrlDict stringForKey:@"sign"];
    };
    
    NSDictionary *responseDict = [[[NSString alloc] initWithData:arg1.retText.buffer encoding:NSUTF8StringEncoding] JSONDictionary];
    
    WeChatRedEnvelopParam *mgrParams = [[WBRedEnvelopParamQueue sharedQueue] dequeue];
    
    BOOL (^shouldReceiveRedEnvelop)() = ^BOOL() {
        
        
        if (!mgrParams) { return NO; }
        
        
        if ([responseDict[@"receiveStatus"] integerValue] == 2) { return NO; }
        
        
        if ([responseDict[@"hbStatus"] integerValue] == 4) { return NO; }
        
        
        if (!responseDict[@"timingIdentifier"]) { return NO; }
        
        if (mgrParams.isGroupSender) { 
            return [WBRedEnvelopConfig sharedConfig].autoReceiveEnable;
        } else {
            return [parseRequestSign() isEqualToString:mgrParams.sign] && [WBRedEnvelopConfig sharedConfig].autoReceiveEnable;
        }
    };
    
    if (shouldReceiveRedEnvelop()) {
        mgrParams.timingIdentifier = responseDict[@"timingIdentifier"];
        
        unsigned int delaySeconds = [self calculateDelaySeconds];
        WBReceiveRedEnvelopOperation *operation = [[WBReceiveRedEnvelopOperation alloc] initWithRedEnvelopParam:mgrParams delay:delaySeconds];
        
        if ([WBRedEnvelopConfig sharedConfig].serialReceive) {
            [[WBRedEnvelopTaskManager sharedManager] addSerialTask:operation];
        } else {
            [[WBRedEnvelopTaskManager sharedManager] addNormalTask:operation];
        }
    }
}


static unsigned int _logos_method$_ungrouped$WCRedEnvelopesLogicMgr$calculateDelaySeconds(_LOGOS_SELF_TYPE_NORMAL WCRedEnvelopesLogicMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSInteger configDelaySeconds = [WBRedEnvelopConfig sharedConfig].delaySeconds;
    
    if ([WBRedEnvelopConfig sharedConfig].serialReceive) {
        unsigned int serialDelaySeconds;
        if ([WBRedEnvelopTaskManager sharedManager].serialQueueIsEmpty) {
            serialDelaySeconds = configDelaySeconds;
        } else {
            serialDelaySeconds = 15;
        }
        
        return serialDelaySeconds;
    } else {
        return (unsigned int)configDelaySeconds;
    }
}




static void _logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * msg, CMessageWrap * wrap) {
    _logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$(self, _cmd, msg, wrap);
    
    switch(wrap.m_uiMessageType) {
        case 49: { 
            
            
            BOOL (^isRedEnvelopMessage)() = ^BOOL() {
                return [wrap.m_nsContent rangeOfString:@"wxpay://"].location != NSNotFound;
            };
            
            if (isRedEnvelopMessage()) { 
                CContactMgr *contactManager = [[_logos_static_class_lookup$MMServiceCenter() defaultCenter] getService:[_logos_static_class_lookup$CContactMgr() class]];
                CContact *selfContact = [contactManager getSelfContact];
                
                BOOL (^isSender)() = ^BOOL() {
                    return [wrap.m_nsFromUsr isEqualToString:selfContact.m_nsUsrName];
                };
                
                
                BOOL (^isGroupReceiver)() = ^BOOL() {
                    return [wrap.m_nsFromUsr rangeOfString:@"@chatroom"].location != NSNotFound;
                };
                
                
                BOOL (^isGroupSender)() = ^BOOL() {
                    return isSender() && [wrap.m_nsToUsr rangeOfString:@"chatroom"].location != NSNotFound;
                };
                
                
                BOOL (^isReceiveSelfRedEnvelop)() = ^BOOL() {
                    return [WBRedEnvelopConfig sharedConfig].receiveSelfRedEnvelop;
                };
                
                
                BOOL (^isGroupInBlackList)() = ^BOOL() {
                    return [[WBRedEnvelopConfig sharedConfig].blackList containsObject:wrap.m_nsFromUsr];
                };
                
                
                BOOL (^shouldReceiveRedEnvelop)() = ^BOOL() {
                    if (![WBRedEnvelopConfig sharedConfig].autoReceiveEnable) { return NO; }
                    if (isGroupInBlackList()) { return NO; }
                    
                    return isGroupReceiver() || (isGroupSender() && isReceiveSelfRedEnvelop());
                };
                
                NSDictionary *(^parseNativeUrl)(NSString *nativeUrl) = ^(NSString *nativeUrl) {
                    nativeUrl = [nativeUrl substringFromIndex:[@"wxpay://c2cbizmessagehandler/hongbao/receivehongbao?" length]];
                    return [_logos_static_class_lookup$WCBizUtil() dictionaryWithDecodedComponets:nativeUrl separator:@"&"];
                };
                
                
                void (^queryRedEnvelopesReqeust)(NSDictionary *nativeUrlDict) = ^(NSDictionary *nativeUrlDict) {
                    NSMutableDictionary *params = [@{} mutableCopy];
                    params[@"agreeDuty"] = @"0";
                    params[@"channelId"] = [nativeUrlDict stringForKey:@"channelid"];
                    params[@"inWay"] = @"0";
                    params[@"msgType"] = [nativeUrlDict stringForKey:@"msgtype"];
                    params[@"nativeUrl"] = [[wrap m_oWCPayInfoItem] m_c2cNativeUrl];
                    params[@"sendId"] = [nativeUrlDict stringForKey:@"sendid"];
                    
                    WCRedEnvelopesLogicMgr *logicMgr = [[objc_getClass("MMServiceCenter") defaultCenter] getService:[objc_getClass("WCRedEnvelopesLogicMgr") class]];
                    [logicMgr ReceiverQueryRedEnvelopesRequest:params];
                };
                
                
                void (^enqueueParam)(NSDictionary *nativeUrlDict) = ^(NSDictionary *nativeUrlDict) {
                    WeChatRedEnvelopParam *mgrParams = [[WeChatRedEnvelopParam alloc] init];
                    mgrParams.msgType = [nativeUrlDict stringForKey:@"msgtype"];
                    mgrParams.sendId = [nativeUrlDict stringForKey:@"sendid"];
                    mgrParams.channelId = [nativeUrlDict stringForKey:@"channelid"];
                    mgrParams.nickName = [selfContact getContactDisplayName];
                    mgrParams.headImg = [selfContact m_nsHeadImgUrl];
                    mgrParams.nativeUrl = [[wrap m_oWCPayInfoItem] m_c2cNativeUrl];
                    mgrParams.sessionUserName = isGroupSender() ? wrap.m_nsToUsr : wrap.m_nsFromUsr;
                    mgrParams.sign = [nativeUrlDict stringForKey:@"sign"];
                    
                    mgrParams.isGroupSender = isGroupSender();
                    
                    [[WBRedEnvelopParamQueue sharedQueue] enqueue:mgrParams];
                };
                
                if (shouldReceiveRedEnvelop()) {
                    NSString *nativeUrl = [[wrap m_oWCPayInfoItem] m_c2cNativeUrl];
                    NSDictionary *nativeUrlDict = parseNativeUrl(nativeUrl);
                    
                    queryRedEnvelopesReqeust(nativeUrlDict);
                    enqueueParam(nativeUrlDict);
                }
            }
            break;
        }
        default:
            break;
    }
    
}

static void _logos_method$_ungrouped$CMessageMgr$onRevokeMsg$(_LOGOS_SELF_TYPE_NORMAL CMessageMgr* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CMessageWrap * arg1) {
    
    if (![WBRedEnvelopConfig sharedConfig].revokeEnable) {
        _logos_orig$_ungrouped$CMessageMgr$onRevokeMsg$(self, _cmd, arg1);
    } else {
        if ([arg1.m_nsContent rangeOfString:@"<session>"].location == NSNotFound) { return; }
        if ([arg1.m_nsContent rangeOfString:@"<replacemsg>"].location == NSNotFound) { return; }
        
        NSString *(^parseSession)() = ^NSString *() {
            NSUInteger startIndex = [arg1.m_nsContent rangeOfString:@"<session>"].location + @"<session>".length;
            NSUInteger endIndex = [arg1.m_nsContent rangeOfString:@"</session>"].location;
            NSRange range = NSMakeRange(startIndex, endIndex - startIndex);
            return [arg1.m_nsContent substringWithRange:range];
        };
        
        NSString *(^parseSenderName)() = ^NSString *() {
            NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"<!\\[CDATA\\[(.*?)撤回了一条消息\\]\\]>" options:NSRegularExpressionCaseInsensitive error:nil];
            
            NSRange range = NSMakeRange(0, arg1.m_nsContent.length);
            NSTextCheckingResult *result = [regex matchesInString:arg1.m_nsContent options:0 range:range].firstObject;
            if (result.numberOfRanges < 2) { return nil; }
            
            return [arg1.m_nsContent substringWithRange:[result rangeAtIndex:1]];
        };
        
        CMessageWrap *msgWrap = [[_logos_static_class_lookup$CMessageWrap() alloc] initWithMsgType:0x2710];
        BOOL isSender = [_logos_static_class_lookup$CMessageWrap() isSenderFromMsgWrap:arg1];
        
        NSString *sendContent;
        if (isSender) {
            [msgWrap setM_nsFromUsr:arg1.m_nsToUsr];
            [msgWrap setM_nsToUsr:arg1.m_nsFromUsr];
            sendContent = @"你撤回一条消息";
        } else {
            [msgWrap setM_nsToUsr:arg1.m_nsToUsr];
            [msgWrap setM_nsFromUsr:arg1.m_nsFromUsr];
            
            NSString *name = parseSenderName();
            sendContent = [NSString stringWithFormat:@"拦截 %@ 的一条撤回消息", name ? name : arg1.m_nsFromUsr];
        }
        [msgWrap setM_uiStatus:0x4];
        [msgWrap setM_nsContent:sendContent];
        [msgWrap setM_uiCreateTime:[arg1 m_uiCreateTime]];
        
        [self AddLocalMsg:parseSession() MsgWrap:msgWrap fixTime:0x1 NewMsgArriveNotify:0x0];
    }
}





static void _logos_method$_ungrouped$NewSettingViewController$reloadTableData(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$NewSettingViewController$reloadTableData(self, _cmd);
    
    WCTableViewManager *tableViewMgr = MSHookIvar<id>(self, "m_tableViewMgr");
    
    WCTableViewSectionManager *sectionInfo = [_logos_static_class_lookup$WCTableViewSectionManager() sectionInfoDefaut];
    
    WCTableViewCellManager *settingCell = [_logos_static_class_lookup$WCTableViewCellManager() normalCellForSel:@selector(setting) target:self title:@"微信抢红包助手"];
    [sectionInfo addCell:settingCell];
    
    [tableViewMgr insertSection:sectionInfo At:0];
    
    MMTableView *tableView = [tableViewMgr getTableView];
    [tableView reloadData];
}


static void _logos_method$_ungrouped$NewSettingViewController$setting(_LOGOS_SELF_TYPE_NORMAL NewSettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    WBSettingViewController *settingViewController = [WBSettingViewController new];
    [self.navigationController PushViewController:settingViewController animated:YES];
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WCRedEnvelopesLogicMgr = objc_getClass("WCRedEnvelopesLogicMgr"); MSHookMessageEx(_logos_class$_ungrouped$WCRedEnvelopesLogicMgr, @selector(OnWCToHongbaoCommonResponse:Request:), (IMP)&_logos_method$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$, (IMP*)&_logos_orig$_ungrouped$WCRedEnvelopesLogicMgr$OnWCToHongbaoCommonResponse$Request$);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'I'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$WCRedEnvelopesLogicMgr, @selector(calculateDelaySeconds), (IMP)&_logos_method$_ungrouped$WCRedEnvelopesLogicMgr$calculateDelaySeconds, _typeEncoding); }Class _logos_class$_ungrouped$CMessageMgr = objc_getClass("CMessageMgr"); MSHookMessageEx(_logos_class$_ungrouped$CMessageMgr, @selector(AsyncOnAddMsg:MsgWrap:), (IMP)&_logos_method$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$, (IMP*)&_logos_orig$_ungrouped$CMessageMgr$AsyncOnAddMsg$MsgWrap$);MSHookMessageEx(_logos_class$_ungrouped$CMessageMgr, @selector(onRevokeMsg:), (IMP)&_logos_method$_ungrouped$CMessageMgr$onRevokeMsg$, (IMP*)&_logos_orig$_ungrouped$CMessageMgr$onRevokeMsg$);Class _logos_class$_ungrouped$NewSettingViewController = objc_getClass("NewSettingViewController"); MSHookMessageEx(_logos_class$_ungrouped$NewSettingViewController, @selector(reloadTableData), (IMP)&_logos_method$_ungrouped$NewSettingViewController$reloadTableData, (IMP*)&_logos_orig$_ungrouped$NewSettingViewController$reloadTableData);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NewSettingViewController, @selector(setting), (IMP)&_logos_method$_ungrouped$NewSettingViewController$setting, _typeEncoding); }} }
#line 263 "/Users/chenfanfang/Desktop/PersonalGitProject/iOS/WeChatRedPacket/WeChatRedPacket/WeChatRedPacketDylib/Logos/WeChatRedPacketDylib.xm"
