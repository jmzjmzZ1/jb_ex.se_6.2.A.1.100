.class public Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "DataTrafficService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentState:I

.field private final mHandler:Landroid/os/Handler;

.field private mNumberOfPollTries:I

.field private final mPollRunnable:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    .line 54
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mPollRunnable:Ljava/lang/Runnable;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mPollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mNumberOfPollTries:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mNumberOfPollTries:I

    return p1
.end method

.method static synthetic access$208(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mNumberOfPollTries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mNumberOfPollTries:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 115
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    if-eq p1, v1, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected getState()I
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 123
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 126
    :goto_0
    return v1

    .line 124
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 90
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mReceiverRegistered:Z

    .line 96
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->getState()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    .line 101
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mCurrentState:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->notifyStateChanged(I)V

    .line 102
    return-void
.end method
