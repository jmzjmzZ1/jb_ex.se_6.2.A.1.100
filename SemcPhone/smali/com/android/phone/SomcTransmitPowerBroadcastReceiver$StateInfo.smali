.class Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;
.super Ljava/lang/Object;
.source "SomcTransmitPowerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcTransmitPowerBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateInfo"
.end annotation


# instance fields
.field public batteryLevel:I

.field public isRFPowerBackoffTrigerOn:Z

.field public wifiApState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->wifiApState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;->batteryLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/SomcTransmitPowerBroadcastReceiver$StateInfo;-><init>()V

    return-void
.end method
