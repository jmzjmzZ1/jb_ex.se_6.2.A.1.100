.class public Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomcTransmitPowerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$1;,
        Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;
    }
.end annotation


# static fields
.field private static final WIFI_TETHERING_OR_SENSOR_OFF_BATTERY_LEVELS:[I

.field private static final WIFI_TETHERING_OR_SENSOR_ON_BATTERY_LEVELS:[I

.field private static sBackOffForceControlState:I

.field private static sPowerLevel:I

.field private static sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;


# instance fields
.field private final mBatteryVoltageThresholdsValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 36
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->WIFI_TETHERING_OR_SENSOR_OFF_BATTERY_LEVELS:[I

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->WIFI_TETHERING_OR_SENSOR_ON_BATTERY_LEVELS:[I

    .line 49
    sput v1, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sPowerLevel:I

    .line 56
    sput v1, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    .line 64
    new-instance v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;-><init>(Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$1;)V

    sput-object v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    return-void

    .line 36
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->mBatteryVoltageThresholdsValue:[I

    .line 66
    return-void
.end method

.method private static getLevel([II)I
    .locals 3
    .parameter "thresholds"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 125
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_1

    .line 126
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "thresholds can\'t be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    aget v2, p0, v1

    if-gt p1, v2, :cond_3

    .line 136
    :cond_2
    :goto_0
    return v1

    .line 130
    :cond_3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    if-lt p1, v2, :cond_4

    .line 131
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 133
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 134
    aget v2, p0, v0

    if-le p1, v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    if-gt p1, v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 133
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static setTransmitPowerByState()V
    .locals 6

    .prologue
    .line 144
    sget-object v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget v3, v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->batteryLevel:I

    if-nez v3, :cond_1

    .line 163
    .local v0, levels:[I
    .local v2, powerLevel:I
    :cond_0
    :goto_0
    return-void

    .line 146
    .end local v0           #levels:[I
    .end local v2           #powerLevel:I
    :cond_1
    const/4 v0, 0x0

    .line 147
    .restart local v0       #levels:[I
    sget-object v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget v3, v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->wifiApState:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget-boolean v3, v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->isRFPowerBackoffTrigerOn:Z

    if-eqz v3, :cond_5

    .line 149
    :cond_2
    sget-object v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->WIFI_TETHERING_OR_SENSOR_ON_BATTERY_LEVELS:[I

    .line 153
    :goto_1
    sget-object v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget v3, v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->batteryLevel:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v0, v3

    .line 154
    .restart local v2       #powerLevel:I
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "SomcTransmitPowerBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old PowerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sPowerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current PowerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    sget v3, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sPowerLevel:I

    if-eq v3, v2, :cond_0

    .line 157
    sput v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sPowerLevel:I

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 161
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "SomcTransmitPowerBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting transmit power to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto :goto_0

    .line 151
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v2           #powerLevel:I
    :cond_5
    sget-object v0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->WIFI_TETHERING_OR_SENSOR_OFF_BATTERY_LEVELS:[I

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    sget-object v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    const-string v3, "wifi_state"

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->wifiApState:I

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->setTransmitPowerByState()V

    .line 116
    return-void

    .line 89
    :cond_1
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v2, "voltage"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, voltage:I
    sget-object v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget-object v3, p0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->mBatteryVoltageThresholdsValue:[I

    invoke-static {v3, v1}, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->getLevel([II)I

    move-result v3

    iput v3, v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->batteryLevel:I

    .line 92
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcTransmitPowerBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery changed with Voltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mV"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v1           #voltage:I
    :cond_2
    const-string v4, "com.sonymobile.intent.action.RFPOWER_BACKOFF_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    sget v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    if-nez v2, :cond_3

    .line 95
    sget-object v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    const-string v4, "powerbackoffstate"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->isRFPowerBackoffTrigerOn:Z

    .line 99
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    .line 100
    const-string v2, "SomcTransmitPowerBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFPowerBackoff changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    iget-boolean v4, v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->isRFPowerBackoffTrigerOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_4
    const-string v4, "com.sonymobile.phone.intent.action.RFPOWER_BACKOFF_CONTROL_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "RFPOWER_BACKOFF_CONTROL_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    .line 106
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_5

    .line 107
    const-string v4, "SomcTransmitPowerBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBackOffForceControlState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_5
    sget v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    if-eqz v4, :cond_0

    .line 110
    sget-object v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sState:Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;

    sget v5, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;->sBackOffForceControlState:I

    if-ne v5, v2, :cond_6

    :goto_1
    iput-boolean v2, v4, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->isRFPowerBackoffTrigerOn:Z

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method
