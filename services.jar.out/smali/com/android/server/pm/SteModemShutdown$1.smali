.class Lcom/android/server/pm/SteModemShutdown$1;
.super Ljava/lang/Object;
.source "SteModemShutdown.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SteModemShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/SteModemShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/SteModemShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 92
    const-string v0, "STE Modem Shutdown"

    const-string v1, "Connected to STErilOemService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/SteModemShutdown;->access$002(Lcom/android/server/pm/SteModemShutdown;Z)Z

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v2}, Lcom/android/server/pm/SteModemShutdown;->access$202(Lcom/android/server/pm/SteModemShutdown;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$300(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 100
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/SteModemShutdown;->access$002(Lcom/android/server/pm/SteModemShutdown;Z)Z

    .line 106
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$300(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$100(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 113
    :cond_0
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
