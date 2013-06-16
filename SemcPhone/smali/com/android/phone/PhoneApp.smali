.class public Lcom/android/phone/PhoneApp;
.super Landroid/app/Application;
.source "PhoneApp.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneApp$4;,
        Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;,
        Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneApp$WakeupAlarm;,
        Lcom/android/phone/PhoneApp$WakeState;,
        Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;
    }
.end annotation


# static fields
.field static DBG:Z

.field static VDBG:Z

.field static mDockState:I

.field private static sMe:Lcom/android/phone/PhoneApp;

.field static sVoiceCapable:Z


# instance fields
.field callController:Lcom/android/phone/CallController;

.field callTimeStamp:Lcom/android/phone/CallTimeStamp;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field final mCallRecorder:Lcom/android/phone/SomcCallRecorder;

.field private mContactNumIconDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mEndHeldCallAt3rdIncomingCall:Z

.field private mHacEnabled:Z

.field mHandler:Landroid/os/Handler;

.field private mIgnoreTouchUserActivity:Z

.field private mIllumination:Lcom/android/phone/SomcCallIllumination;

.field private final mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

.field private mInCallScreen:Lcom/android/phone/SomcInCallScreen;

.field private final mInternationalCallLockReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field mIsRFPowerBackoffEnabled:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mNationalRoamingSettings:I

.field private mNationalRoamingSupported:Z

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPokeLockToken:Landroid/os/IBinder;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneApp$WakeState;

.field private mWakeupAlarm:Lcom/android/phone/PhoneApp$WakeupAlarm;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 107
    sput-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    .line 231
    sput v0, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 580
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 227
    iput v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 228
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 229
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 263
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 265
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 274
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 280
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    .line 281
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    .line 291
    iput v1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 297
    new-instance v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    new-instance v0, Lcom/android/phone/SomcCallLockReceiver;

    invoke-direct {v0}, Lcom/android/phone/SomcCallLockReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mInternationalCallLockReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneApp$InCallNotificationMuteReceiver;-><init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSupported:Z

    .line 325
    iput v1, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSettings:I

    .line 327
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mEndHeldCallAt3rdIncomingCall:Z

    .line 350
    iput v1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 370
    new-instance v0, Lcom/android/phone/PhoneApp$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$1;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/android/phone/PhoneApp$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneApp$2;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    .line 578
    new-instance v0, Lcom/android/phone/SomcCallRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/phone/SomcCallRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 581
    sput-object p0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    .line 582
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updateNationalDataRoaming()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneApp;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInternationalCallLockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneApp;)Lcom/android/phone/AccelerometerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcInCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneApp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneApp;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1000
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    const-string v1, "missed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1012
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1013
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1016
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 1026
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1027
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1028
    return-object v0
.end method

.method static createMuteOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1062
    const-class v0, Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneApp;
    .locals 1

    .prologue
    .line 976
    sget-object v0, Lcom/android/phone/PhoneApp;->sMe:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 983
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1050
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1053
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 2353
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2354
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2355
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneApp"

    const-string v2, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_2
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2361
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2376
    const-string v0, "tty_off"

    move-object v1, v0

    .line 2379
    :goto_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2366
    :pswitch_0
    const-string v0, "tty_full"

    move-object v1, v0

    .line 2367
    goto :goto_1

    .line 2369
    :pswitch_1
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 2370
    goto :goto_1

    .line 2372
    :pswitch_2
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 2373
    goto :goto_1

    .line 2364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 2207
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2211
    const-string v1, ""

    .line 2213
    if-eqz v0, :cond_0

    .line 2214
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2215
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 2216
    packed-switch v0, :pswitch_data_0

    .line 2228
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2222
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updateNationalDataRoaming()V

    goto :goto_0

    .line 2216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 2385
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2387
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2388
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2393
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 2

    .prologue
    .line 1862
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1866
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1867
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1870
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1871
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1872
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    .line 1873
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1875
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_3

    .line 1876
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1878
    :cond_3
    return-void
.end method

.method private initWakeupAlarm()V
    .locals 3

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 938
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 912
    .local v0, interval:I
    new-instance v1, Lcom/android/phone/PhoneApp$3;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/PhoneApp$3;-><init>(Lcom/android/phone/PhoneApp;I)V

    iput-object v1, p0, Lcom/android/phone/PhoneApp;->mWakeupAlarm:Lcom/android/phone/PhoneApp$WakeupAlarm;

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1856
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "onMMIComplete()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1858
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1859
    return-void
.end method

.method static setDebugLevel(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2512
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug level changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    packed-switch p0, :pswitch_data_0

    .line 2523
    sput-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 2524
    sput-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    .line 2527
    :goto_0
    return-void

    .line 2515
    :pswitch_0
    sput-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 2516
    sput-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    goto :goto_0

    .line 2519
    :pswitch_1
    sput-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    .line 2520
    sput-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    goto :goto_0

    .line 2513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1953
    sget-object v2, Lcom/android/phone/PhoneApp$4;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1971
    :cond_0
    :goto_0
    return v0

    .line 1959
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1968
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDataRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2237
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v0

    .line 2239
    .local v0, dataRoamingSetting:I
    if-nez v0, :cond_0

    .line 2240
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 2253
    :goto_0
    return-void

    .line 2241
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2243
    :cond_1
    if-ne v0, v3, :cond_3

    .line 2244
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isNationalRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2245
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2247
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2250
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private updateNationalDataRoaming()V
    .locals 2

    .prologue
    .line 2231
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2233
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updateDataRoaming()V

    .line 2235
    :cond_0
    return-void
.end method

.method private updatePokeLock()V
    .locals 4

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    const-string v0, "PhoneApp"

    const-string v1, "PokeLock should not be used when proximity sensor is available on the device."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_0
    return-void

    .line 1358
    :cond_0
    const/4 v0, 0x0

    .line 1359
    sget-object v1, Lcom/android/phone/PhoneApp$4;->$SwitchMap$com$android$phone$PhoneApp$ScreenTimeoutDuration:[I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1385
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIgnoreTouchUserActivity:Z

    if-eqz v1, :cond_1

    .line 1386
    or-int/lit8 v0, v0, 0x1

    .line 1391
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mPokeLockToken:Landroid/os/IBinder;

    const-string v3, "PhoneApp"

    invoke-interface {v1, v0, v2, v3}, Landroid/os/IPowerManager;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.setPokeLock() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1365
    :pswitch_0
    const/4 v0, 0x2

    .line 1366
    goto :goto_1

    .line 1373
    :pswitch_1
    const/4 v0, 0x4

    .line 1374
    goto :goto_1

    .line 1359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public allowEndingHeldCallAt3rdIncomingCall()Z
    .locals 1

    .prologue
    .line 2349
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mEndHeldCallAt3rdIncomingCall:Z

    return v0
.end method

.method dismissCallScreen()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method displayCallScreen()V
    .locals 4

    .prologue
    .line 1069
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1074
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    :goto_0
    return-void

    .line 1081
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1086
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method getCallIlluminationInstance()Lcom/android/phone/SomcCallIllumination;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mIllumination:Lcom/android/phone/SomcCallIllumination;

    return-object v0
.end method

.method public getContactNumIconDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContactNumIconDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mContactNumIconDataMap:Ljava/util/Map;

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mContactNumIconDataMap:Ljava/util/Map;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getNationalDataRoamingSetting()I
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSettings:I

    return v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method public goToSleep()V
    .locals 4

    .prologue
    .line 1577
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1578
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1582
    :goto_0
    return-void

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.goToSleep() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public goToSleep(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 1585
    if-lez p1, :cond_0

    .line 1587
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->goToSleep()V

    .line 1594
    return-void

    .line 1588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 2471
    const-string v0, "PhoneApp"

    const-string v1, "show sim depersonal panel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2476
    new-instance v1, Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/phone/IccDepersonalizationPanel;-><init>(Landroid/content/Context;I)V

    .line 2478
    invoke-virtual {v1}, Lcom/android/phone/IccDepersonalizationPanel;->show()V

    .line 2479
    return-void
.end method

.method public isBluetoothConnected()Z
    .locals 2

    .prologue
    .line 1602
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEndOrRejectBtPressed()Z
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isEndOrRejectBtPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1887
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingCallScreenForProximity()Z
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 957
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 958
    iput-boolean v1, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    .line 964
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 966
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 969
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 970
    return-void

    .line 960
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 588
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_13

    .line 589
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->setDebugLevel(I)V

    .line 594
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v3, "onCreate()..."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 601
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08002f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsRFPowerBackoffEnabled:Z

    .line 611
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_b

    .line 613
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 616
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 622
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 623
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 629
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 631
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 633
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 635
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 637
    if-ne v0, v8, :cond_1

    .line 639
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 640
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 643
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 644
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 651
    :goto_1
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    .line 652
    invoke-static {p0}, Lcom/android/phone/SomcCallIllumination;->init(Landroid/content/Context;)Lcom/android/phone/SomcCallIllumination;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mIllumination:Lcom/android/phone/SomcCallIllumination;

    .line 655
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 656
    const v4, 0x1000001a

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 660
    const v4, 0x20000001

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 663
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_2

    .line 665
    const/16 v4, 0x20

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 668
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mProximityWakeLock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 672
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 677
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsRFPowerBackoffEnabled:Z

    if-eqz v0, :cond_5

    .line 678
    new-instance v0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    .line 680
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->enable(Z)V

    .line 683
    :cond_5
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 684
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 688
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 693
    new-instance v0, Landroid/os/UpdateLock;

    const-string v4, "phone"

    invoke-direct {v0, v4}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    .line 695
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mUpdateLock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_6
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    .line 703
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 709
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 715
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->ringer:Lcom/android/phone/Ringer;

    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    new-instance v6, Lcom/android/phone/CallLogAsync;

    invoke-direct {v6}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v0, v4, v5, v6}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 717
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 718
    new-instance v0, Lcom/android/phone/CallTimeStamp;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTimeStamp;-><init>(Lcom/android/phone/PhoneApp;)V

    iput-object v0, p0, Lcom/android/phone/PhoneApp;->callTimeStamp:Lcom/android/phone/CallTimeStamp;

    .line 719
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->callTimeStamp:Lcom/android/phone/CallTimeStamp;

    invoke-virtual {v0}, Lcom/android/phone/CallTimeStamp;->activate()V

    .line 723
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_9

    .line 725
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "PhoneApp"

    const-string v5, "register for ICC status"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_8
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-interface {v0, v4, v5, v7}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 730
    :cond_9
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-virtual {v0, v4, v5, v7}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08001d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mHacEnabled:Z

    .line 737
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08001e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 742
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 748
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v4, :cond_a

    .line 753
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    :cond_a
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v4, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 761
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 762
    new-instance v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;

    invoke-direct {v4}, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneApp;->mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 763
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 766
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 768
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 780
    const/16 v4, 0x3e0

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 783
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 786
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 790
    const v0, 0x7f05000c

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 792
    const/high16 v0, 0x7f05

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 797
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 799
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->initWakeupAlarm()V

    .line 802
    :cond_b
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v8, :cond_c

    .line 811
    :cond_c
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 814
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 823
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mTtyEnabled:Z

    if-eqz v0, :cond_d

    .line 824
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    .line 829
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    const-string v4, "ttyEnabled"

    iget v0, p0, Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I

    if-eqz v0, :cond_15

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v3}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 833
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 837
    :cond_d
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mHacEnabled:Z

    if-eqz v0, :cond_e

    .line 838
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 841
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HACSetting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_16

    const-string v3, "ON"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 846
    if-eqz v4, :cond_e

    .line 847
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.telephony.intent.action.HAC_ENABLED_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    const-string v3, "hacEnabled"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 857
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSupported:Z

    .line 859
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSupported:Z

    if-eqz v0, :cond_f

    .line 860
    const-string v0, "national_data_roaming_users_choice_pref"

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 862
    const-string v1, "national_data_roaming_setting"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 863
    const-string v1, "national_data_roaming_setting"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setNationalDataRoamingSetting(I)V

    .line 871
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 874
    :cond_10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 875
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataTrafficExceptMmsNotifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    iget-object v1, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 883
    :cond_11
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->restoreDualMicNoiseSuppressionUsed(Landroid/content/Context;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 885
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreEqualizerUsed()V

    .line 886
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreSpeakerVoiceEnhancementUsed()V

    .line 887
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreSlowTalkUsed()V

    .line 888
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->restoreFarEndNoiseSuppressionUsed(Landroid/content/Context;)V

    .line 892
    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mEndHeldCallAt3rdIncomingCall:Z

    .line 898
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->init()V

    .line 900
    return-void

    .line 591
    :cond_13
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->setDebugLevel(I)V

    goto/16 :goto_0

    .line 648
    :cond_14
    iput-object v7, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    goto/16 :goto_1

    :cond_15
    move v0, v2

    .line 830
    goto/16 :goto_2

    .line 842
    :cond_16
    const-string v3, "OFF"

    goto/16 :goto_3

    .line 866
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setNationalDataRoamingSetting(I)V

    goto/16 :goto_4
.end method

.method public orientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1753
    iput p1, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1754
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1755
    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    .prologue
    .line 1639
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :goto_0
    return-void

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.userActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method preventScreenOn(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1564
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- preventScreenOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->preventScreenOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :goto_0
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerManagerService.preventScreenOn() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V
    .locals 3
    .parameter

    .prologue
    .line 1407
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    monitor-enter p0

    .line 1409
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    if-eq v0, p1, :cond_3

    .line 1410
    sget-object v0, Lcom/android/phone/PhoneApp$4;->$SwitchMap$com$android$phone$PhoneApp$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneApp$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1430
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1431
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1434
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1438
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    .line 1440
    :cond_3
    monitor-exit p0

    .line 1441
    return-void

    .line 1414
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1415
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1416
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1440
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1422
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1423
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1424
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLatestActiveCallOrigin()V
    .locals 8

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2452
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_0

    .line 2453
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTimeMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", saved timestamp for call origin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 2458
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    .line 2459
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume previous call origin ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2468
    :goto_0
    return-void

    .line 2465
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    const-string v1, "Drop previous call origin and set the current one to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .parameter "beginning"

    .prologue
    .line 1655
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1657
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1658
    return-void
.end method

.method setEmergencyCallRetryCount(I)V
    .locals 1
    .parameter "retryCount"

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallScreen;->setEmergencyCallRetryCount(I)V

    .line 2406
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    .line 1128
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 3
    .parameter "callOrigin"

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2429
    if-eqz p1, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2434
    :goto_0
    return-void

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_0
.end method

.method public setNationalDataRoamingSetting(I)V
    .locals 4
    .parameter "userchoice"

    .prologue
    .line 941
    iget v2, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSettings:I

    if-eq v2, p1, :cond_0

    .line 942
    iput p1, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSettings:I

    .line 943
    const-string v2, "national_data_roaming_users_choice_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/PhoneApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 944
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 945
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "national_data_roaming_setting"

    iget v3, p0, Lcom/android/phone/PhoneApp;->mNationalRoamingSettings:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 948
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updateDataRoaming()V

    .line 949
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1246
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1263
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/android/phone/PhoneApp;->mShouldRestoreMuteOnInCallResume:Z

    .line 394
    return-void
.end method

.method setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V
    .locals 3
    .parameter

    .prologue
    .line 1318
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    :cond_1
    :goto_0
    return-void

    .line 1328
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    if-eq p1, v0, :cond_1

    .line 1331
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mScreenTimeoutDuration:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    .line 1332
    invoke-direct {p0}, Lcom/android/phone/PhoneApp;->updatePokeLock()V

    goto :goto_0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1916
    iget v0, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneApp;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneApp;->mShowBluetoothIndication:Z

    .line 1919
    if-eqz p1, :cond_2

    .line 1922
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->requestUpdateBluetoothIndication()V

    .line 1923
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1928
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1929
    return-void
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    .line 2316
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->requestUpdateScreen()V

    .line 2323
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/Phone$State;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1764
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_3

    .line 1765
    iput-object p1, p0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 1772
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v0, :cond_4

    .line 1777
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 1790
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_1

    .line 1792
    iput v2, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    .line 1793
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1795
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_6

    .line 1797
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1798
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1799
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1800
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1811
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeupAlarm:Lcom/android/phone/PhoneApp$WakeupAlarm;

    if-eqz v0, :cond_2

    .line 1812
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v0, :cond_7

    .line 1813
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeupAlarm:Lcom/android/phone/PhoneApp$WakeupAlarm;

    invoke-interface {v0}, Lcom/android/phone/PhoneApp$WakeupAlarm;->startWakeupAlarm()V

    .line 1820
    :cond_2
    :goto_3
    iput-boolean v2, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    .line 1826
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_3

    .line 1827
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne p1, v3, :cond_8

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallScreen;->updateKeyguardPolicy(Z)V

    .line 1830
    :cond_3
    return-void

    .line 1781
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1793
    goto :goto_1

    .line 1803
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister mScreenReceiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1815
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeupAlarm:Lcom/android/phone/PhoneApp$WakeupAlarm;

    invoke-interface {v0}, Lcom/android/phone/PhoneApp$WakeupAlarm;->stopWakeupAlarm()V

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1827
    goto :goto_4
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1689
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProximitySensorMode: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1692
    iget-object v5, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1696
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z

    if-eqz v0, :cond_7

    :cond_2
    move v4, v1

    .line 1704
    :goto_0
    iget v0, p0, Lcom/android/phone/PhoneApp;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    move v3, v1

    .line 1706
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreenForProximity()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v3, :cond_9

    move v0, v1

    :goto_2
    or-int/2addr v4, v0

    .line 1713
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_11

    .line 1714
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->okToShowDialpad()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1719
    :goto_3
    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    move v0, v1

    :goto_4
    or-int/2addr v0, v4

    .line 1721
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/phone/PhoneApp;->mBeginningCall:Z

    if-eqz v4, :cond_d

    :cond_3
    if-nez v0, :cond_d

    if-nez v3, :cond_d

    .line 1725
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1726
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1748
    :cond_5
    :goto_5
    monitor-exit v5

    .line 1750
    :cond_6
    return-void

    :cond_7
    move v4, v2

    .line 1696
    goto :goto_0

    :cond_8
    move v3, v2

    .line 1704
    goto :goto_1

    :cond_9
    move v0, v2

    .line 1706
    goto :goto_2

    :cond_a
    move v0, v2

    .line 1714
    goto :goto_3

    :cond_b
    move v0, v2

    .line 1719
    goto :goto_4

    .line 1729
    :cond_c
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1748
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1734
    :cond_d
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1735
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_e

    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: releasing..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_e
    if-eqz v0, :cond_f

    .line 1741
    :goto_6
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_5

    :cond_f
    move v2, v1

    .line 1739
    goto :goto_6

    .line 1743
    :cond_10
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_5

    .line 1744
    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_11
    move v0, v2

    goto :goto_3
.end method

.method updateWakeState()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1472
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 1477
    invoke-virtual {p0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v5

    .line 1482
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1492
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v3, :cond_6

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    .line 1500
    :goto_1
    sget-boolean v6, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWakeState: callscreen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dialer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", speaker "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_7

    .line 1512
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 1544
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v0, :cond_9

    move v0, v1

    .line 1545
    :goto_3
    iget-object v3, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_a

    move v3, v1

    .line 1546
    :goto_4
    iget-object v4, p0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v5, :cond_b

    move v4, v1

    .line 1548
    :goto_5
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    move v2, v1

    .line 1549
    :cond_3
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWakeState: keepScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (isRinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", isDialing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingDisc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_4
    if-eqz v2, :cond_c

    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1555
    return-void

    :cond_5
    move v0, v2

    .line 1482
    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 1492
    goto/16 :goto_1

    .line 1515
    :cond_7
    if-eqz v0, :cond_8

    .line 1524
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto :goto_2

    .line 1533
    :cond_8
    sget-object v0, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 1544
    goto :goto_3

    :cond_a
    move v3, v2

    .line 1545
    goto :goto_4

    :cond_b
    move v4, v2

    .line 1546
    goto :goto_5

    .line 1554
    :cond_c
    sget-object v0, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    goto :goto_6
.end method

.method wakeUpScreen()V
    .locals 5

    .prologue
    .line 1448
    monitor-enter p0

    .line 1449
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mWakeState:Lcom/android/phone/PhoneApp$WakeState;

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    if-ne v0, v1, :cond_1

    .line 1450
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1452
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneApp;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1457
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1458
    return-void

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1453
    :catch_0
    move-exception v0

    goto :goto_0
.end method
