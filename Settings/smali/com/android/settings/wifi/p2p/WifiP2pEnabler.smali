.class public final Lcom/android/settings/wifi/p2p/WifiP2pEnabler;
.super Ljava/lang/Object;
.source "WifiP2pEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mCheckBox:Landroid/widget/Switch;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiP2pIsEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    .line 61
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "WifiP2pEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 73
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    return-void

    .line 71
    :cond_1
    const-string v0, "WifiP2pEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 116
    const-string v0, "WifiP2pEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pIsEnabled:Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 111
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pIsEnabled:Z

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 95
    if-eqz p2, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mWifiP2pIsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pEnabler;->mCheckBox:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
