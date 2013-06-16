.class public Lcom/android/phone/BluetoothHandsfree;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHandsfree$36;,
        Lcom/android/phone/BluetoothHandsfree$DebugThread;,
        Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;,
        Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;,
        Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;,
        Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;,
        Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    }
.end annotation


# static fields
.field private static final mVersion:I

.field private static sInstance:Lcom/android/phone/BluetoothHandsfree;

.field private static sVoiceCommandIntent:Landroid/content/Intent;


# instance fields
.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mA2dpState:I

.field private mA2dpSuspended:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPossible:Z

.field private mAudioState:I

.field private mBgndEarliestConnectionTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

.field private final mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdmaCallsSwapped:Z

.field private mCdmaIsSecondCallActive:Z

.field mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

.field private mClccTimestamps:[J

.field private mClccUsed:[Z

.field private mClip:Z

.field private mCmee:Z

.field private mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

.field private mConnectedSco:Landroid/bluetooth/BluetoothSocket;

.field private final mContext:Landroid/content/Context;

.field private mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

.field private mExpectingBCS:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHeadset:Landroid/bluetooth/HeadsetBase;

.field private mHeadsetType:I

.field private mIIEnabled:[Z

.field private mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

.field private mIndicatorsEnabled:Z

.field private mLocalBrsf:I

.field private mLocalCodec:I

.field private mPendingAudioState:Z

.field private mPendingScoForA2dp:Z

.field private mPendingScoForWbs:Z

.field private mPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private final mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRemoteAvailableCodecs:I

.field private mRemoteBrsf:I

.field private mRemoteCodec:I

.field private mScoGain:I

.field private mServiceConnectionEstablished:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

.field private mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserWantsAudio:Z

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mWaitingForCallStart:Z

.field private mWaitingForVoiceRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "1.6"

    const-string v1, "ro.bluetooth.hfp.ver"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/16 v0, 0x6a

    sput v0, Lcom/android/phone/BluetoothHandsfree;->mVersion:I

    .line 212
    const-string v0, "BT HS/HF"

    const-string v1, "Version 1.6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    const/16 v0, 0x69

    sput v0, Lcom/android/phone/BluetoothHandsfree;->mVersion:I

    .line 215
    const-string v0, "BT HS/HF"

    const-string v1, "Version 1.5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "context"
    .parameter "cm"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 108
    iput-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 109
    iput-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 116
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 128
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    .line 129
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 132
    const/16 v1, 0x8

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    .line 133
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 145
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 146
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->IDLE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 150
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 159
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 160
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 162
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 163
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 164
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    .line 171
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 172
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 204
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 1514
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$1;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    .line 1651
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$2;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 248
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 249
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    .line 250
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 251
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_6

    move v0, v2

    .line 252
    .local v0, bluetoothCapable:Z
    :goto_0
    iput-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 253
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 254
    if-eqz v0, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x2

    invoke-virtual {v1, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 258
    :cond_0
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    .line 259
    iput-object v7, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 260
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 262
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    .line 263
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "BT HS/HF:StartCall"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 265
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 266
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "BT HS/HF:VoiceRecognition"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 268
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 270
    const/16 v1, 0x63

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 275
    sget-object v1, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    .line 277
    sget-object v1, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v4, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHeadset;->isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 284
    :cond_2
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    invoke-direct {v1, p0, v7}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    .line 285
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 286
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 287
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 288
    new-instance v1, Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/phone/BluetoothAtPhonebook;-><init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    .line 289
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    .line 290
    invoke-virtual {p0, v3}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 292
    sget v1, Lcom/android/phone/BluetoothHandsfree;->mVersion:I

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_7

    .line 293
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "BT HS/HF"

    const-string v2, "BRSF_AG_CODEC_NEGOTIATION is enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_3
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    .line 299
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 300
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V

    .line 303
    :cond_5
    return-void

    .end local v0           #bluetoothCapable:Z
    :cond_6
    move v0, v3

    .line 251
    goto/16 :goto_0

    .line 296
    .restart local v0       #bluetoothCapable:Z
    :cond_7
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "BT HS/HF"

    const-string v2, "BRSF_AG_CODEC_NEGOTIATION is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->fallbackNb()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothAtPhonebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return p1
.end method

.method static synthetic access$3876(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->callStarted()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide v0
.end method

.method static synthetic access$4802(Lcom/android/phone/BluetoothHandsfree;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J

    return-wide p1
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->redial()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/android/phone/BluetoothHandsfree;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sVoiceCommandIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectVoiceRecognition()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;)Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/phone/BluetoothHandsfree;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/phone/BluetoothHandsfree;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    return p1
.end method

.method static synthetic access$8200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothHandsfree;->broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/phone/BluetoothHandsfree;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v0

    return v0
.end method

.method private allowAudioAnytime()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3206
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "debug.bt.hfp.audio_anytime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private broadcastVendorSpecificEventIntent(Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "command"
    .parameter "companyId"
    .parameter "commandType"
    .parameter "arguments"
    .parameter "device"

    .prologue
    .line 1683
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVendorSpecificEventIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1684
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1690
    const-string v1, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1691
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.bluetooth.headset.intent.category.companyid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1697
    return-void
.end method

.method private declared-synchronized callStarted()V
    .locals 1

    .prologue
    .line 3094
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    if-eqz v0, :cond_0

    .line 3095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 3096
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3097
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3101
    :cond_0
    monitor-exit p0

    return-void

    .line 3094
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2083
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2084
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v3

    .line 2086
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    .line 2089
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v0, :cond_2

    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v0, :cond_2

    move v0, v2

    .line 2128
    :goto_0
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v3, v5, :cond_7

    .line 2129
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v3, :cond_6

    move v3, v1

    .line 2145
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2147
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2148
    const/4 v2, -0x1

    .line 2149
    if-eqz v4, :cond_0

    .line 2150
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v2

    .line 2153
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2154
    if-eqz v4, :cond_1

    .line 2155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2157
    :cond_1
    :goto_3
    return-object v0

    .line 2095
    :cond_2
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 2123
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_3

    .line 2101
    :pswitch_1
    if-nez p1, :cond_4

    .line 2102
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_0

    .line 2104
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 2109
    goto/16 :goto_0

    .line 2111
    :pswitch_3
    const/4 v0, 0x2

    .line 2112
    goto/16 :goto_0

    .line 2114
    :pswitch_4
    const/4 v0, 0x3

    .line 2115
    goto/16 :goto_0

    .line 2117
    :pswitch_5
    const/4 v0, 0x4

    .line 2118
    goto/16 :goto_0

    .line 2120
    :pswitch_6
    const/4 v0, 0x5

    .line 2121
    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 2139
    goto/16 :goto_1

    :cond_7
    move v3, v2

    .line 2142
    goto/16 :goto_1

    :cond_8
    move v1, v2

    .line 2145
    goto/16 :goto_2

    .line 2095
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized cdmaGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2028
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/android/internal/telephony/Connection;

    .line 2029
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2030
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2032
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 2035
    sget-object v5, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_4

    .line 2036
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Filling clccConnections[0] for INCOMING state"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2037
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2060
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_a

    .line 2062
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V

    .line 2069
    :cond_2
    :goto_1
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2070
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_b

    aget-object v3, v1, v0

    if-eqz v3, :cond_b

    .line 2071
    aget-object v3, v1, v0

    invoke-direct {p0, v0, v3}, Lcom/android/phone/BluetoothHandsfree;->cdmaConnectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v3

    .line 2072
    if-eqz v3, :cond_3

    .line 2073
    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2070
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2038
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2040
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2041
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_5

    const-string v4, "Filling clccConnections[0] & [1] for CALL WAITING state"

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2042
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2043
    const/4 v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2028
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2045
    :cond_6
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v6, :cond_8

    .line 2047
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_7

    const-string v3, "Filling clccConnections[0] with ForgroundCall latest connection"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2048
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    .line 2052
    :cond_8
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_9

    const-string v3, "Filling clccConnections[0] & [1] with ForgroundCall connections"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2053
    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    aput-object v4, v1, v3

    .line 2054
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    aput-object v2, v1, v3

    goto/16 :goto_0

    .line 2063
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_2

    .line 2065
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->cdmaSetSecondCallState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2077
    :cond_b
    monitor-exit p0

    return-object v2
.end method

.method private closeConnectedSco()V
    .locals 4

    .prologue
    .line 553
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v2, :cond_1

    .line 555
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    const/4 v0, 0x0

    .line 561
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 564
    :cond_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 565
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 567
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    .line 569
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, e:Ljava/io/IOException;
    const-string v2, "BT HS/HF"

    const-string v3, "Error when closing Sco socket"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configAudioParameters()V
    .locals 4

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 677
    const-string v0, "<unknown>"

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt_headset_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bt_headset_nrec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 680
    return-void
.end method

.method private connectScoThread(Z)V
    .locals 4
    .parameter

    .prologue
    .line 529
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 533
    const/16 v2, 0xb

    invoke-direct {p0, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V

    .line 536
    :cond_0
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;Z)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 537
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    const-string v2, "HandsfreeScoSocketConnectThread"

    invoke-virtual {v0, v2}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->setName(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->start()V

    .line 541
    :cond_1
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1979
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1999
    :pswitch_0
    const/4 v0, 0x0

    .line 2020
    :cond_0
    :goto_0
    return-object v0

    :pswitch_1
    move v0, v1

    .line 2003
    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2004
    if-eqz v3, :cond_4

    .line 2005
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    .line 2008
    :goto_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2010
    :goto_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2011
    const/4 v1, -0x1

    .line 2012
    if-eqz v4, :cond_1

    .line 2013
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v1

    .line 2016
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+CLCC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    if-eqz v4, :cond_0

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 1985
    goto :goto_1

    .line 1987
    :pswitch_3
    const/4 v0, 0x2

    .line 1988
    goto :goto_1

    .line 1990
    :pswitch_4
    const/4 v0, 0x3

    .line 1991
    goto :goto_1

    .line 1993
    :pswitch_5
    const/4 v0, 0x4

    .line 1994
    goto :goto_1

    .line 1996
    :pswitch_6
    const/4 v0, 0x5

    .line 1997
    goto :goto_1

    :cond_2
    move v3, v1

    .line 2005
    goto :goto_2

    :cond_3
    move v2, v1

    .line 2008
    goto :goto_3

    :cond_4
    move v3, v1

    goto :goto_2

    .line 1979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized expectCallStart()V
    .locals 4

    .prologue
    .line 3085
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z

    .line 3086
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3087
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3088
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3089
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3091
    :cond_0
    monitor-exit p0

    return-void

    .line 3085
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized expectVoiceRecognition()V
    .locals 4

    .prologue
    .line 3106
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 3107
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3108
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3109
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3110
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    :cond_0
    monitor-exit p0

    return-void

    .line 3106
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized fallbackNb()V
    .locals 4

    .prologue
    .line 1621
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1625
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 1626
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 1627
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SCO_FAILED, sending +BCS:1 to try NB"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1628
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 1629
    const-string v1, "+BCS:1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1630
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1631
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    monitor-exit p0

    return-void

    .line 1621
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 1647
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 1648
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    .locals 23

    .prologue
    .line 1899
    monitor-enter p0

    const/16 v21, 0x6

    :try_start_0
    move/from16 v0, v21

    new-array v4, v0, [Lcom/android/internal/telephony/Connection;

    .line 1900
    .local v4, clccConnections:[Lcom/android/internal/telephony/Connection;
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 1901
    .local v16, newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1903
    .local v7, connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 1904
    .local v11, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1905
    .local v2, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    .line 1907
    .local v18, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1908
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1910
    :cond_0
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1911
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1913
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1914
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1918
    :cond_2
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v6, v0, [Z

    .line 1919
    .local v6, clccUsed:[Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ge v13, v0, :cond_3

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    aput-boolean v21, v6, v13

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-boolean v22, v21, v13

    .line 1919
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1923
    :cond_3
    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    .line 1924
    .local v3, c:Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    .line 1925
    .local v12, found:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v19

    .line 1926
    .local v19, timestamp:J
    const/4 v13, 0x0

    :goto_2
    const/16 v21, 0x6

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 1927
    aget-boolean v21, v6, v13

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v21, v0

    aget-wide v21, v21, v13

    cmp-long v21, v19, v21

    if-nez v21, :cond_6

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-boolean v22, v21, v13

    .line 1929
    const/4 v12, 0x1

    .line 1930
    aput-object v3, v4, v13

    .line 1934
    :cond_5
    if-nez v12, :cond_4

    .line 1935
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1899
    .end local v2           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v4           #clccConnections:[Lcom/android/internal/telephony/Connection;
    .end local v6           #clccUsed:[Z
    .end local v7           #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v11           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v12           #found:Z
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .end local v18           #ringingCall:Lcom/android/internal/telephony/Call;
    .end local v19           #timestamp:J
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 1926
    .restart local v2       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v3       #c:Lcom/android/internal/telephony/Connection;
    .restart local v4       #clccConnections:[Lcom/android/internal/telephony/Connection;
    .restart local v6       #clccUsed:[Z
    .restart local v7       #connections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v11       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v12       #found:Z
    .restart local v13       #i:I
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #newConnections:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/Connection;>;"
    .restart local v18       #ringingCall:Lcom/android/internal/telephony/Call;
    .restart local v19       #timestamp:J
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1956
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v12           #found:Z
    .end local v19           #timestamp:J
    .local v8, earliestConnection:Lcom/android/internal/telephony/Connection;
    .local v9, earliestTimestamp:J
    .local v15, j:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-boolean v22, v21, v13

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    move-object/from16 v21, v0

    aput-wide v9, v21, v13

    .line 1958
    aput-object v8, v4, v13

    .line 1959
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1940
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_b

    .line 1942
    const/4 v13, 0x0

    .line 1943
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    if-eqz v21, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1945
    :cond_9
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1946
    .restart local v9       #earliestTimestamp:J
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1947
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_7

    .line 1948
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/Connection;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v19

    .line 1949
    .restart local v19       #timestamp:J
    cmp-long v21, v19, v9

    if-gez v21, :cond_a

    .line 1950
    move-wide/from16 v9, v19

    .line 1951
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 1947
    .restart local v8       #earliestConnection:Lcom/android/internal/telephony/Connection;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1963
    .end local v8           #earliestConnection:Lcom/android/internal/telephony/Connection;
    .end local v9           #earliestTimestamp:J
    .end local v15           #j:I
    .end local v19           #timestamp:J
    :cond_b
    new-instance v17, Landroid/bluetooth/AtCommandResult;

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1964
    .local v17, result:Landroid/bluetooth/AtCommandResult;
    const/4 v13, 0x0

    :goto_5
    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_d

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v13

    if-eqz v21, :cond_c

    .line 1966
    aget-object v21, v4, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/phone/BluetoothHandsfree;->connectionToClccEntry(ILcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v5

    .line 1967
    .local v5, clccEntry:Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 1968
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1964
    .end local v5           #clccEntry:Ljava/lang/String;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1973
    :cond_d
    monitor-exit p0

    return-object v17
.end method

.method private inDebug()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3202
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "debug.bt.hfp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static init(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)Lcom/android/phone/BluetoothHandsfree;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 236
    const-class v1, Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 237
    :try_start_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/BluetoothHandsfree;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    .line 242
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    monitor-exit v1

    return-object v0

    .line 240
    :cond_0
    const-string v0, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/BluetoothHandsfree;->sInstance:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeHandsfreeAtParser()V
    .locals 4

    .prologue
    .line 2244
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Registering Handsfree AT commands"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2246
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2249
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$4;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$4;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 2258
    const/16 v2, 0x44

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$5;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$5;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V

    .line 2293
    const-string v2, "+CHUP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$6;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$6;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2313
    const-string v2, "+BRSF"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$7;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$7;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2342
    const-string v2, "+CCWA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$8;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$8;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2371
    const-string v2, "+CMER"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$9;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$9;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2419
    const-string v2, "+CMEE"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$10;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$10;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2453
    const-string v2, "+BLDN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$11;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$11;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2461
    const-string v2, "+CIND"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$12;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$12;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2473
    const-string v2, "+CSQ"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$13;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$13;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2481
    const-string v2, "+CREG"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$14;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$14;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2490
    const-string v2, "+VTS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$15;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$15;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2522
    const-string v2, "+CLCC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$16;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$16;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2554
    const-string v2, "+CHLD"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$17;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$17;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2670
    const-string v2, "+COPS"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$18;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$18;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2707
    const-string v2, "+CPIN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$19;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$19;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2716
    const-string v2, "+BTRH"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$20;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$20;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2732
    const-string v2, "+CIMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$21;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$21;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2746
    const-string v2, "+CLIP"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$22;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$22;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2769
    const-string v2, "+CGSN"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$23;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$23;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2779
    const-string v2, "+CGMM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$24;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$24;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2793
    const-string v2, "+CGMI"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$25;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$25;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2807
    const-string v2, "+NREC"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$26;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$26;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2822
    const-string v2, "+BVRA"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$27;

    invoke-direct {v3, p0}, Lcom/android/phone/BluetoothHandsfree$27;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2857
    const-string v2, "+CNUM"

    new-instance v3, Lcom/android/phone/BluetoothHandsfree$28;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/BluetoothHandsfree$28;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2870
    const-string v1, "+VGM"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$29;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$29;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2880
    const-string v1, "+VGS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$30;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$30;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2896
    const-string v1, "+CPAS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$31;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$31;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2916
    sget v1, Lcom/android/phone/BluetoothHandsfree;->mVersion:I

    const/16 v2, 0x6a

    if-ge v1, v2, :cond_1

    .line 2917
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    .line 3063
    :goto_0
    return-void

    .line 2923
    :cond_1
    const-string v1, "+BCC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$32;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$32;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2949
    const-string v1, "+BCS"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$33;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$33;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2993
    const-string v1, "+BAC"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$34;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$34;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3041
    const-string v1, "+BIA"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$35;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$35;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3062
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1, v0}, Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V

    goto :goto_0
.end method

.method private initializeHeadsetAtParser()V
    .locals 3

    .prologue
    .line 2191
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Registering Headset AT commands"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 2192
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2195
    const-string v1, "+CKPD"

    new-instance v2, Lcom/android/phone/BluetoothHandsfree$3;

    invoke-direct {v2, p0}, Lcom/android/phone/BluetoothHandsfree$3;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2238
    return-void
.end method

.method private isA2dpMultiProfile()Z
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v1}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCellularCallInProgress()Z
    .locals 1

    .prologue
    .line 3229
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3230
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeadsetConnected()Z
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-nez v0, :cond_1

    .line 598
    :cond_0
    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private isIncallAudio()Z
    .locals 2

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 641
    .local v0, state:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVirtualCallInProgress()Z
    .locals 1

    .prologue
    .line 3235
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    return v0
.end method

.method private isVoiceRecognitionInProgress()Z
    .locals 1

    .prologue
    .line 3158
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3435
    const-string v0, "BT HS/HF"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    return-void
.end method

.method private redial()Landroid/bluetooth/AtCommandResult;
    .locals 5

    .prologue
    .line 1870
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothAtPhonebook;->getLastDialledNumber()Ljava/lang/String;

    move-result-object v1

    .line 1871
    .local v1, number:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1874
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Bluetooth redial requested (+BLDN), but no previous outgoing calls found. Ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1876
    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1891
    :goto_0
    return-object v2

    .line 1880
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 1881
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1883
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1884
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1890
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->expectCallStart()V

    .line 1891
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method private registerAllVendorSpecificCommands()V
    .locals 3

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->getAtParser()Landroid/bluetooth/AtParser;

    move-result-object v0

    .line 2182
    const-string v1, "+XEVENT"

    const/16 v2, 0x55

    invoke-direct {p0, v1, v2, v0}, Lcom/android/phone/BluetoothHandsfree;->registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V

    .line 2185
    return-void
.end method

.method private registerVendorSpecificCommand(Ljava/lang/String;ILandroid/bluetooth/AtParser;)V
    .locals 2
    .parameter "commandName"
    .parameter "companyId"
    .parameter "parser"

    .prologue
    .line 2171
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V

    invoke-virtual {p3, p1, v0}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2173
    return-void
.end method

.method private resetConnectScoThread()V
    .locals 2

    .prologue
    .line 546
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1

    .line 547
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    .line 548
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendURC(Ljava/lang/String;)V
    .locals 1
    .parameter "urc"

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    invoke-virtual {v0, p1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 1866
    :cond_0
    return-void
.end method

.method private declared-synchronized setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "state"
    .parameter "device"

    .prologue
    .line 1636
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1

    .line 1638
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingAudioState:Z

    .line 1640
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    :goto_0
    monitor-exit p0

    return-void

    .line 1643
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p2, p1}, Landroid/bluetooth/BluetoothHeadset;->setAudioState(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDebug()V
    .locals 2

    .prologue
    .line 3211
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-nez v0, :cond_0

    .line 3212
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 3213
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->start()V

    .line 3215
    :cond_0
    return-void
.end method

.method private stopDebug()V
    .locals 1

    .prologue
    .line 3218
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->interrupt()V

    .line 3220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mDebugThread:Lcom/android/phone/BluetoothHandsfree$DebugThread;

    .line 3222
    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 220
    packed-switch p0, :pswitch_data_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "headset"

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v0, "handsfree"

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized audioOff()V
    .locals 2

    .prologue
    .line 1815
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioOff(): mPendingScoForA2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingScoForWbs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectedSco: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mA2dpState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mA2dpSuspended: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1821
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v0, :cond_3

    .line 1822
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1823
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "resuming A2DP stream after disconnecting SCO"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1824
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->resumeSink(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1826
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1829
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 1832
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    if-eqz v0, :cond_4

    .line 1833
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;->shutdown()V

    .line 1834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mSignalScoCloseThread:Lcom/android/phone/BluetoothHandsfree$SignalScoCloseThread;

    .line 1839
    :cond_4
    const-class v1, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1840
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    if-eqz v0, :cond_5

    .line 1841
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectScoThread:Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$ScoSocketConnectThread;->shutdown()V

    .line 1842
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->resetConnectScoThread()V

    .line 1844
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    :try_start_2
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->closeConnectedSco()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1847
    monitor-exit p0

    return-void

    .line 1844
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1815
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized audioOn()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1711
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "audioOn()"

    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1712
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1713
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "audioOn(): headset is not connected!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 1716
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    if-nez v3, :cond_3

    .line 1717
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "audioOn(): service connection not yet established!"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1711
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1721
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v3, :cond_5

    .line 1722
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "audioOn(): audio is already connected"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_4
    move v1, v2

    .line 1723
    goto :goto_0

    .line 1726
    :cond_5
    iget-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    if-nez v3, :cond_6

    .line 1727
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "audioOn(): user requested no audio, ignoring"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1731
    :cond_6
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    if-eqz v1, :cond_8

    .line 1732
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "audioOn(): SCO already pending for A2DP"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_7
    move v1, v2

    .line 1733
    goto :goto_0

    .line 1736
    :cond_8
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    if-eqz v1, :cond_a

    .line 1737
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "audioOn(): SCO already pending for WBS"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    :cond_9
    move v1, v2

    .line 1738
    goto :goto_0

    .line 1741
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1742
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 1743
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I

    if-ne v1, v5, :cond_c

    .line 1744
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "suspending A2DP stream for SCO"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 1745
    :cond_b
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothA2dp;->suspendSink(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    .line 1746
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mA2dpSuspended:Z

    if-eqz v1, :cond_f

    .line 1747
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    .line 1748
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1755
    .end local v0           #msg:Landroid/os/Message;
    :cond_c
    :goto_1
    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z

    if-nez v1, :cond_e

    .line 1756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 1757
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_14

    .line 1759
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    if-nez v1, :cond_12

    .line 1760
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    .line 1761
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "BT HS/HF"

    const-string v3, "+BCS:2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_d
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 1763
    const-string v1, "+BCS:2"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1769
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z

    .line 1770
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z

    .line 1771
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1773
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    :cond_e
    :goto_3
    move v1, v2

    .line 1791
    goto/16 :goto_0

    .line 1751
    :cond_f
    const-string v1, "BT HS/HF"

    const-string v3, "Could not suspend A2DP stream for SCO, going ahead with SCO"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1765
    :cond_10
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "BT HS/HF"

    const-string v3, "+BCS:1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :cond_11
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I

    .line 1767
    const-string v1, "+BCS:1"

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto :goto_2

    .line 1776
    :cond_12
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    .line 1777
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_samplerate=16000"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1778
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V

    goto :goto_3

    .line 1781
    :cond_13
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_samplerate=8000"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1782
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V

    goto :goto_3

    .line 1786
    :cond_14
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "bt_samplerate=8000"

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1787
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public cdmaSetSecondCallState(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3426
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cdmaSetSecondCallState: Setting mCdmaIsSecondCallActive to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3427
    :cond_0
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 3429
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_1

    .line 3430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 3432
    :cond_1
    return-void
.end method

.method public cdmaSwapSecondCallState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3420
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cdmaSetSecondCallState: Toggling mCdmaIsSecondCallActive"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3421
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaIsSecondCallActive:Z

    .line 3422
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z

    .line 3423
    return-void

    .line 3421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized connectHeadset(Landroid/bluetooth/HeadsetBase;I)V
    .locals 3
    .parameter "headset"
    .parameter "headsetType"

    .prologue
    const/4 v2, 0x1

    .line 604
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    .line 605
    iput p2, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 606
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    if-ne v1, v2, :cond_1

    .line 607
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHeadsetAtParser()V

    .line 613
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->registerAllVendorSpecificCommands()V

    .line 615
    invoke-virtual {p1}, Landroid/bluetooth/HeadsetBase;->startEventThread()V

    .line 616
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->configAudioParameters()V

    .line 618
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->inDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->startDebug()V

    .line 622
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I

    .line 623
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    const/4 v1, 0x7

    if-gt v0, v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    .end local v0           #i:I
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 604
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 627
    .restart local v0       #i:I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isIncallAudio()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 628
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 630
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized disconnectHeadset()V
    .locals 1

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 649
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I

    .line 652
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->stopDebug()V

    .line 653
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    monitor-exit p0

    return-void

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getHeadset()Landroid/bluetooth/HeadsetBase;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;

    return-object v0
.end method

.method declared-synchronized initiateScoUsingVirtualVoiceCall()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3246
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "initiateScoUsingVirtualVoiceCall: Received"

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3248
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3249
    :cond_1
    const-string v1, "BT HS/HF"

    const-string v2, "initiateScoUsingVirtualVoiceCall: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3277
    :goto_0
    monitor-exit p0

    return v0

    .line 3254
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3255
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3257
    const-string v3, "+CIEV: 3,2"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3258
    const-string v3, "+CIEV: 2,1"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3259
    const-string v3, "+CIEV: 3,0"

    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3260
    invoke-virtual {v2}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3261
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "BT HS/HF"

    const-string v3, "initiateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3267
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3268
    const-string v1, "initiateScoUsingVirtualVoiceCall: audioON failed"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3269
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3273
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 3276
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "initiateScoUsingVirtualVoiceCall: Done"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move v0, v1

    .line 3277
    goto :goto_0
.end method

.method isAudioOn()Z
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized onBluetoothDisabled()V
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 590
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->shutdown()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    :cond_0
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onBluetoothEnabled()V
    .locals 2

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    .line 581
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    const-string v1, "incomingScoAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->setName(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mIncomingScoThread:Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree$IncomingScoAcceptThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_0
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportCmeError(I)Landroid/bluetooth/AtCommandResult;
    .locals 3
    .parameter

    .prologue
    .line 3073
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    if-eqz v0, :cond_0

    .line 3074
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CME ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3078
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method declared-synchronized resetAtState()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 657
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClip:Z

    .line 658
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z

    .line 659
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mCmee:Z

    .line 661
    const/4 v1, 0x6

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccTimestamps:[J

    .line 662
    const/4 v1, 0x6

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mClccUsed:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    .line 667
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mPhonebook:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothAtPhonebook;->resetAtState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 657
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendScoGainUpdate(I)V
    .locals 2
    .parameter

    .prologue
    .line 3066
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 3067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+VGS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3068
    iput p1, p0, Lcom/android/phone/BluetoothHandsfree;->mScoGain:I

    .line 3070
    :cond_0
    return-void
.end method

.method setVirtualCallInProgress(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3239
    iput-boolean p1, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3240
    return-void
.end method

.method declared-synchronized startVoiceRecognition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isCellularCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_2

    .line 3119
    :cond_0
    const-string v1, "BT HS/HF"

    const-string v2, "startVoiceRecognition: Call in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3140
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 3123
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3125
    iget-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    if-eqz v0, :cond_4

    .line 3127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z

    .line 3128
    const-string v0, "OK"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3133
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    move-result v0

    .line 3134
    if-nez v0, :cond_3

    .line 3135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3137
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3138
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree;->mStartVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3131
    :cond_4
    :try_start_2
    const-string v0, "+BVRA: 1"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized stopVoiceRecognition()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3145
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVoiceRecognitionInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 3153
    :goto_0
    monitor-exit p0

    return v0

    .line 3149
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVoiceRecognitionStarted:Z

    .line 3151
    const-string v0, "+BVRA: 0"

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3152
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3153
    const/4 v0, 0x1

    goto :goto_0

    .line 3145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminateScoUsingVirtualVoiceCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3281
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "terminateScoUsingVirtualVoiceCall: Received"

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3283
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 3303
    :goto_0
    monitor-exit p0

    return v0

    .line 3288
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 3291
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3292
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3294
    const-string v1, "+CIEV: 2,0"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 3296
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "terminateScoUsingVirtualVoiceCall: Sent Call-setup procedure"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V

    .line 3298
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mVirtualCallStarted:Z

    .line 3299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z

    .line 3302
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "terminateScoUsingVirtualVoiceCall: Done"

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3303
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 3281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1700
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BT HS/HF"

    const-string v1, "updateBtHandsfreeAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    .line 1703
    return-void
.end method

.method declared-synchronized userWantsAudioOff()V
    .locals 1

    .prologue
    .line 1807
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1808
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1809
    monitor-exit p0

    return-void

    .line 1807
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized userWantsAudioOn()V
    .locals 1

    .prologue
    .line 1799
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z

    .line 1800
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    monitor-exit p0

    return-void

    .line 1799
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
