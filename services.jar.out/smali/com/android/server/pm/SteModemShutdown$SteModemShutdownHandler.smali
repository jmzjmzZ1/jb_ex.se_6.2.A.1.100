.class Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
.super Landroid/os/Handler;
.source "SteModemShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SteModemShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteModemShutdownHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/SteModemShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/SteModemShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SteModemShutdown;Lcom/android/server/pm/SteModemShutdown$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;-><init>(Lcom/android/server/pm/SteModemShutdown;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/pm/SteModemShutdown;->access$900(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v0, v3}, Lcom/android/server/pm/SteModemShutdown;->access$002(Lcom/android/server/pm/SteModemShutdown;Z)Z

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
