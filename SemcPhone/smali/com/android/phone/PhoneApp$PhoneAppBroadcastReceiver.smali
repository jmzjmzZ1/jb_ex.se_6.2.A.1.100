.class Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1979
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1979
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1982
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1983
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1984
    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1990
    :goto_0
    const-string v1, "PhoneApp"

    const-string v2, "Setting property persist.radio.airplane_mode_on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const-string v2, "persist.radio.airplane_mode_on"

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1994
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v1, v1, Lcom/android/phone/PhoneApp;->mIsRFPowerBackoffEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1995
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->enable(Z)V

    .line 2113
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 1984
    goto :goto_0

    .line 1991
    :cond_2
    const-string v1, "0"

    goto :goto_1

    .line 1997
    :cond_3
    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1998
    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 2000
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "PhoneApp"

    const-string v2, "mReceiver: HEADSET_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_5

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget v3, v3, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_5
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto :goto_2

    .line 2003
    :cond_6
    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2004
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 2007
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_7

    const-string v1, "PhoneApp"

    const-string v2, "mReceiver: HEADSET_AUDIO_STATE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_7
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_8

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> new state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget v3, v3, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto/16 :goto_2

    .line 2010
    :cond_9
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2011
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "PhoneApp"

    const-string v1, "mReceiver: ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_a
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_b
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_c

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_c
    const-string v0, "DISCONNECTED"

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2020
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2021
    const-string v1, "roamingOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2025
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2027
    :cond_d
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    :cond_e
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2031
    :cond_f
    const-string v0, "CONNECTED"

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 2035
    :cond_10
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2036
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_11

    const-string v2, "PhoneApp"

    const-string v3, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_11
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_12

    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    :cond_12
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_13

    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_13
    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_14

    :goto_3
    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$1202(Lcom/android/phone/PhoneApp;Z)Z

    .line 2040
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_14
    move v0, v1

    .line 2039
    goto :goto_3

    .line 2041
    :cond_15
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2042
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_16

    const-string v0, "PhoneApp"

    const-string v1, "mReceiver: ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_16
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_2

    .line 2044
    :cond_17
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2045
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2046
    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2047
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->updateNationalDataRoaming()V
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;)V

    .line 2049
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2051
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_18

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call lock enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_18
    if-eqz v0, :cond_19

    .line 2054
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2056
    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInternationalCallLockReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2059
    :cond_19
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2067
    :cond_1a
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2068
    const-string v0, "phoneName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2069
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio technology switched. Now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is active."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_2

    .line 2071
    :cond_1b
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2072
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2073
    :cond_1c
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2074
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_1d

    .line 2075
    const-string v0, "PhoneApp"

    const-string v2, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const-string v0, "phoneinECMState"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2078
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 2082
    :cond_1d
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " phones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2085
    :cond_1e
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2086
    const-string v0, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 2088
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1f

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOCK_EVENT -> mDockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PhoneApp;->mDockState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 2090
    :cond_20
    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2091
    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const-string v3, "ttyPreferredMode"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;I)I

    .line 2094
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2095
    const-string v3, "ttyEnabled"

    iget-object v4, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v4

    if-eqz v4, :cond_23

    :goto_4
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2096
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2098
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_21

    const-string v0, "PhoneApp"

    const-string v2, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_21
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_22

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_22
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_23
    move v0, v1

    .line 2095
    goto :goto_4

    .line 2101
    :cond_24
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2102
    const-string v0, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2104
    if-nez v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_2

    .line 2107
    :cond_25
    const-string v0, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataTrafficSwitchDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2111
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2
.end method
