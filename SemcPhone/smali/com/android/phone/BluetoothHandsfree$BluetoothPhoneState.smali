.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# instance fields
.field private mBattchg:I

.field private mCall:I

.field private mCallStartTime:J

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStopRing:Z

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 777
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 730
    iput-boolean v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 733
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 745
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 947
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 781
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 782
    invoke-direct {p0, v3, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    .line 783
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 785
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 791
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 793
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 804
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->stopRing()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateCallHeld()V

    return-void
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 921
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 924
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13
    .parameter "signalStrength"

    .prologue
    const/4 v12, 0x7

    .line 869
    const/4 v6, 0x0

    .line 870
    .local v6, levelDbm:I
    const/4 v7, 0x0

    .line 871
    .local v7, levelEcio:I
    const/4 v2, 0x0

    .line 872
    .local v2, cdmaIconLevel:I
    const/4 v4, 0x0

    .line 873
    .local v4, evdoIconLevel:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 874
    .local v0, cdmaDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 876
    .local v1, cdmaEcio:I
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    .line 883
    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    .line 889
    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    .line 891
    :goto_2
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2800(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 894
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    .line 895
    .local v3, evdoEcio:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    .line 896
    .local v5, evdoSnr:I
    const/4 v8, 0x0

    .line 897
    .local v8, levelEvdoEcio:I
    const/4 v9, 0x0

    .line 900
    .local v9, levelEvdoSnr:I
    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    .line 906
    :goto_3
    if-le v5, v12, :cond_f

    const/4 v9, 0x4

    .line 912
    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    .line 915
    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    .end local v2           #cdmaIconLevel:I
    :goto_6
    return v2

    .line 877
    .restart local v2       #cdmaIconLevel:I
    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    .line 878
    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    .line 879
    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 880
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 884
    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    .line 885
    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    .line 886
    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    .line 887
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    .line 889
    goto :goto_2

    .line 901
    .restart local v3       #evdoEcio:I
    .restart local v5       #evdoSnr:I
    .restart local v8       #levelEvdoEcio:I
    .restart local v9       #levelEvdoSnr:I
    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    .line 902
    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    .line 903
    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    .line 904
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 907
    :cond_f
    const/4 v10, 0x5

    if-le v5, v10, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    .line 908
    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    .line 909
    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    .line 910
    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    .line 912
    goto :goto_5

    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_14
    move v2, v4

    .line 915
    goto :goto_6
.end method

.method private getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I
    .locals 2
    .parameter "currState"
    .parameter "prevState"

    .prologue
    .line 1385
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_1

    .line 1386
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p2, v1, :cond_0

    .line 1387
    const/4 v0, 0x0

    .line 1398
    .local v0, callheld:I
    :goto_0
    return v0

    .line 1389
    .end local v0           #callheld:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1392
    .end local v0           #callheld:I
    :cond_1
    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne p1, v1, :cond_2

    .line 1393
    const/4 v0, 0x1

    .restart local v0       #callheld:I
    goto :goto_0

    .line 1396
    .end local v0           #callheld:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #callheld:I
    goto :goto_0
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .prologue
    .line 1477
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 852
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 853
    .local v0, asu:I
    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    const/4 v1, 0x5

    .line 858
    :cond_0
    :goto_0
    return v1

    .line 854
    :cond_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 855
    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 856
    :cond_2
    if-lt v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    .line 857
    :cond_3
    if-lt v0, v3, :cond_4

    move v1, v3

    goto :goto_0

    .line 858
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handlePreciseCallStateChange(ZLcom/android/internal/telephony/Connection;)V
    .locals 22
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 1127
    monitor-enter p0

    const/4 v5, 0x0

    .line 1128
    .local v5, call:I
    const/4 v8, 0x0

    .line 1129
    .local v8, callsetup:I
    const/4 v6, 0x0

    .line 1130
    .local v6, callheld:I
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1131
    .local v13, prevCallsetup:I
    new-instance v15, Landroid/bluetooth/AtCommandResult;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1132
    .local v15, result:Landroid/bluetooth/AtCommandResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 1133
    .local v10, foregroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1134
    .local v4, backgroundCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 1136
    .local v16, ringingCall:Lcom/android/internal/telephony/Call;
    sget-boolean v18, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v18, :cond_0

    const-string v18, "updatePhoneState()"

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    .line 1143
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    .line 1144
    .local v11, newState:Lcom/android/internal/telephony/Phone$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v18

    move-object/from16 v0, v18

    if-eq v11, v0, :cond_1

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static {v0, v11}, Lcom/android/phone/BluetoothHandsfree;->access$4402(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 1146
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v19, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPhoneState:Lcom/android/internal/telephony/Phone$State;
    invoke-static/range {v19 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4400(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1160
    :cond_1
    :goto_0
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1196
    :cond_2
    :goto_1
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_2

    .line 1210
    :goto_2
    sget-object v18, Lcom/android/phone/BluetoothHandsfree$36;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_3

    .line 1228
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v5, :cond_4

    .line 1229
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 1232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1235
    :cond_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1236
    if-eqz p1, :cond_4

    .line 1237
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 2,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1240
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_6

    .line 1241
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1242
    if-eqz p1, :cond_6

    .line 1249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_6

    .line 1251
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 3,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1256
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1257
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 1258
    .local v3, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1259
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v9

    .line 1261
    .local v9, currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->getPreviousCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v14

    .line 1264
    .local v14, prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CDMA call state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " prev state:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    .line 1266
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCdmaCallHeldStatus(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)I

    move-result v6

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v0, v9, :cond_9

    .line 1274
    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_8

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1278
    if-eqz p1, :cond_7

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_7

    .line 1280
    const-string v18, "+CIEV: 3,2"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1282
    const-string v18, "+CIEV: 4,1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1284
    const-string v18, "+CIEV: 3,3"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1285
    const-string v18, "+CIEV: 3,0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1292
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)V

    .line 1300
    :cond_8
    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_9

    sget-object v18, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_9

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1305
    if-eqz p1, :cond_9

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_9

    .line 1307
    const-string v18, "+CIEV: 2,1"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1308
    const-string v18, "+CIEV: 3,0"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1313
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v9, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    .line 1319
    .end local v3           #app:Lcom/android/phone/PhoneApp;
    .end local v9           #currCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    .end local v14           #prevCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree;->mCdmaThreeWayCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCdmaCallsSwapped:Z
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$4700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v7

    .line 1330
    .local v7, callsSwitched:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_b

    if-eqz v7, :cond_c

    .line 1331
    :cond_b
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1332
    if-eqz p1, :cond_c

    .line 1333
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 4,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1337
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_11

    if-eq v8, v13, :cond_11

    .line 1339
    const/4 v12, 0x0

    .line 1340
    .local v12, number:Ljava/lang/String;
    const/16 v17, 0x80

    .line 1342
    .local v17, type:I
    if-nez p2, :cond_d

    .line 1343
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 1344
    if-nez p2, :cond_d

    .line 1345
    const-string v18, "BT HS/HF"

    const-string v19, "Could not get a handle on Connection object for new incoming call"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_d
    if-eqz p2, :cond_e

    .line 1350
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 1351
    if-eqz v12, :cond_e

    .line 1352
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v17

    .line 1355
    :cond_e
    if-nez v12, :cond_f

    .line 1356
    const-string v12, ""

    .line 1358
    :cond_f
    if-nez v5, :cond_10

    if-eqz v6, :cond_15

    :cond_10
    if-eqz p1, :cond_15

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_11

    .line 1361
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CCWA: \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1362
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "+CIEV: 3,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1378
    .end local v12           #number:Ljava/lang/String;
    .end local v17           #type:I
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    .line 1148
    .end local v7           #callsSwitched:Z
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$4502(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1127
    .end local v4           #backgroundCall:Lcom/android/internal/telephony/Call;
    .end local v10           #foregroundCall:Lcom/android/internal/telephony/Call;
    .end local v11           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v13           #prevCallsetup:I
    .end local v15           #result:Landroid/bluetooth/AtCommandResult;
    .end local v16           #ringingCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1162
    .restart local v4       #backgroundCall:Lcom/android/internal/telephony/Call;
    .restart local v10       #foregroundCall:Lcom/android/internal/telephony/Call;
    .restart local v11       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v13       #prevCallsetup:I
    .restart local v15       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v16       #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_2
    const/4 v5, 0x1

    .line 1163
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 1166
    :pswitch_3
    const/4 v8, 0x2

    .line 1168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #calls: Lcom/android/phone/BluetoothHandsfree;->callStarted()V
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$4600(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_1

    .line 1182
    :pswitch_4
    const/4 v8, 0x3

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static/range {v18 .. v19}, Lcom/android/phone/BluetoothHandsfree;->access$202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_1

    .line 1188
    :pswitch_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1189
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1190
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1191
    goto/16 :goto_1

    .line 1199
    :pswitch_6
    const/4 v8, 0x1

    .line 1200
    goto/16 :goto_2

    .line 1204
    :pswitch_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1205
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1206
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_2

    .line 1212
    :pswitch_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_12

    .line 1213
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1215
    :cond_12
    const/4 v5, 0x1

    .line 1216
    const/4 v6, 0x2

    .line 1218
    goto/16 :goto_3

    .line 1222
    :pswitch_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1223
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 1224
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    goto/16 :goto_3

    .line 1323
    :cond_13
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_14

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4800(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-eqz v18, :cond_14

    const/4 v7, 0x1

    .line 1326
    .restart local v7       #callsSwitched:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v19

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mBgndEarliestConnectionTime:J
    invoke-static/range {v18 .. v20}, Lcom/android/phone/BluetoothHandsfree;->access$4802(Lcom/android/phone/BluetoothHandsfree;J)J

    goto/16 :goto_4

    .line 1323
    .end local v7           #callsSwitched:Z
    :cond_14
    const/4 v7, 0x0

    goto :goto_6

    .line 1366
    .restart local v7       #callsSwitched:Z
    .restart local v12       #number:Ljava/lang/String;
    .restart local v17       #type:I
    :cond_15
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 1367
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 1368
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 1369
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v18

    and-int/lit8 v18, v18, 0x8

    if-eqz v18, :cond_16

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1375
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1160
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1196
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1210
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1403
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendRingUpdate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1404
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1405
    .local v3, result:Landroid/bluetooth/AtCommandResult;
    const-string v5, "RING"

    invoke-virtual {v3, v5}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1406
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1416
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    invoke-static {v5, v6, v4, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1418
    .local v0, cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v4, :cond_1

    .line 1419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CLIP: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1428
    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1429
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1432
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :goto_1
    return-object v3

    .line 1421
    .restart local v0       #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .restart local v3       #result:Landroid/bluetooth/AtCommandResult;
    :cond_1
    iget-object v4, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    .local v2, name:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CLIP: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",,,\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #cit:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #result:Landroid/bluetooth/AtCommandResult;
    :cond_2
    move-object v3, v4

    .line 1432
    goto :goto_1
.end method

.method private scoClosed()V
    .locals 7

    .prologue
    .line 1492
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v2

    .line 1493
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$4500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    .line 1495
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1496
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1498
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit v2

    .line 1499
    return-void

    .line 1498
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendClipUpdate()Z
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mClip:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRingUpdate()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 834
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 837
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 837
    goto :goto_0

    :cond_2
    move v0, v1

    .line 841
    goto :goto_0
.end method

.method private sendUpdate()Z
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadsetType:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIndicatorsEnabled:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mServiceConnectionEstablished:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private signalToRssi(I)I
    .locals 1
    .parameter "signal"

    .prologue
    const/4 v0, 0x0

    .line 935
    packed-switch p1, :pswitch_data_0

    .line 943
    :goto_0
    :pswitch_0
    return v0

    .line 937
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 938
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 939
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 940
    :pswitch_4
    const/16 v0, 0x13

    goto :goto_0

    .line 941
    :pswitch_5
    const/16 v0, 0x1f

    goto :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private stopRing()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStopRing:Z

    .line 846
    return-void
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .locals 6

    .prologue
    .line 1447
    monitor-enter p0

    :try_start_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1452
    .local v2, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isVirtualCallInProgress()Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1453
    const/4 v0, 0x1

    .line 1454
    .local v0, call:I
    const/4 v1, 0x0

    .line 1461
    .local v1, call_setup:I
    :goto_0
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v4

    iput v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIND: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1464
    .local v3, status:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1465
    monitor-exit p0

    return-object v2

    .line 1457
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v3           #status:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 1458
    .restart local v0       #call:I
    iget v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #call_setup:I
    goto :goto_0

    .line 1447
    .end local v0           #call:I
    .end local v1           #call_setup:I
    .end local v2           #result:Landroid/bluetooth/AtCommandResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1470
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    monitor-exit p0

    return-object v0

    .line 1469
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 1053
    monitor-enter p0

    :try_start_0
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1054
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1055
    .local v1, scale:I
    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    .line 1065
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1058
    :cond_1
    mul-int/lit8 v2, v0, 0x5

    :try_start_1
    div-int v0, v2, v1

    .line 1059
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_0

    .line 1060
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 1061
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v2

    const/4 v3, 0x7

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1053
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BT HS/HF"

    const-string v1, "updateBtPhoneStateAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 811
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 812
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 815
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 817
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 821
    return-void
.end method

.method private declared-synchronized updateCallHeld()V
    .locals 2

    .prologue
    .line 1440
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-eqz v0, :cond_0

    .line 1441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 1442
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+CIEV: 4,0"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1444
    :cond_0
    monitor-exit p0

    return-void

    .line 1440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .locals 6
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1092
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 1093
    .local v2, service:I
    :goto_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 1095
    .local v1, roam:I
    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1096
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v4, p2}, Lcom/android/phone/BluetoothHandsfree;->access$2802(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 1097
    if-nez v2, :cond_5

    .line 1098
    const/4 v3, 0x0

    .line 1103
    .local v3, stat:I
    :goto_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v4, :cond_1

    .line 1104
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 1105
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1109
    :cond_1
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v4, :cond_2

    .line 1110
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 1111
    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v4

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_2

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1115
    :cond_2
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v4, :cond_3

    .line 1116
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 1117
    if-eqz p1, :cond_3

    .line 1118
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1122
    :cond_3
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    monitor-exit p0

    return-void

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :cond_4
    move v2, v1

    .line 1092
    goto/16 :goto_0

    .line 1100
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v1       #roam:I
    .restart local v2       #service:I
    :cond_5
    if-ne v1, v3, :cond_6

    const/4 v3, 0x5

    .restart local v3       #stat:I
    :cond_6
    goto :goto_1

    .line 1092
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1070
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$100(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1089
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1074
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 1077
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_2

    .line 1078
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 1079
    .local v0, signal:I
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 1080
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_0

    .line 1081
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 1082
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v2

    const/4 v3, 0x5

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 1083
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1070
    .end local v0           #signal:I
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1087
    .restart local v1       #signalStrength:Landroid/telephony/SignalStrength;
    :cond_2
    :try_start_2
    const-string v2, "BT HS/HF"

    const-string v3, "Signal Strength null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
