.class Lcom/android/server/pm/SteModemShutdown$2;
.super Landroid/os/HandlerThread;
.source "SteModemShutdown.java"


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
.method constructor <init>(Lcom/android/server/pm/SteModemShutdown;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 123
    iget-object v6, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v6}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    new-instance v7, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

    iget-object v8, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {v7, v8, v10}, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;-><init>(Lcom/android/server/pm/SteModemShutdown;Lcom/android/server/pm/SteModemShutdown$1;)V

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mHandler:Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
    invoke-static {v6, v7}, Lcom/android/server/pm/SteModemShutdown;->access$402(Lcom/android/server/pm/SteModemShutdown;Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;)Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

    .line 126
    iget-object v6, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    new-instance v7, Landroid/os/Messenger;

    iget-object v8, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mHandler:Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
    invoke-static {v8}, Lcom/android/server/pm/SteModemShutdown;->access$400(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mMessenger:Landroid/os/Messenger;
    invoke-static {v6, v7}, Lcom/android/server/pm/SteModemShutdown;->access$602(Lcom/android/server/pm/SteModemShutdown;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 128
    const/16 v6, 0xa

    invoke-static {v10, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 129
    .local v3, shutdownMsg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mMessenger:Landroid/os/Messenger;
    invoke-static {v6}, Lcom/android/server/pm/SteModemShutdown;->access$600(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/Messenger;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 130
    iput v9, v3, Landroid/os/Message;->arg1:I

    .line 131
    iput v9, v3, Landroid/os/Message;->arg2:I

    .line 132
    const/4 v6, 0x3

    new-array v1, v6, [B

    const/16 v6, 0xd

    aput-byte v6, v1, v5

    const/16 v6, 0x1e

    aput-byte v6, v1, v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mReboot:Z
    invoke-static {v7}, Lcom/android/server/pm/SteModemShutdown;->access$700(Lcom/android/server/pm/SteModemShutdown;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v1, v6

    .line 133
    .local v1, data:[B
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 135
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    :try_start_0
    const-string v4, "STE Modem Shutdown"

    const-string v6, "Turning off radio..."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v4, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v4}, Lcom/android/server/pm/SteModemShutdown;->access$200(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "STE Modem Shutdown"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    iget-object v4, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/SteModemShutdown;->access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v4}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/SteModemShutdown;->access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v6}, Lcom/android/server/pm/SteModemShutdown;->access$900(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/ServiceConnection;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 144
    iget-object v4, p0, Lcom/android/server/pm/SteModemShutdown$2;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mBound:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/SteModemShutdown;->access$002(Lcom/android/server/pm/SteModemShutdown;Z)Z

    goto/16 :goto_0

    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #data:[B
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    move v4, v5

    .line 132
    goto :goto_1
.end method
