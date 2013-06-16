.class Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallFeatureSettingsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2435
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2439
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2440
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1800(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    #calls: Lcom/android/phone/CallFeaturesSetting;->updateNetworkRelatedSettings(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$1900(Lcom/android/phone/CallFeaturesSetting;Z)V

    .line 2442
    :cond_0
    return-void
.end method
