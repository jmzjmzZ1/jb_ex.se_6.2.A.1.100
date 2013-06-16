.class Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method private constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 881
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 884
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$800(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$900(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 888
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$900(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #getter for: Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v1}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    goto :goto_0

    .line 893
    :cond_2
    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    #calls: Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V
    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->access$1100(Lcom/android/phone/MobileNetworkSettings;)V

    goto :goto_0
.end method
