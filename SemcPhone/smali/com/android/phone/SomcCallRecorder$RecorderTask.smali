.class Lcom/android/phone/SomcCallRecorder$RecorderTask;
.super Landroid/os/AsyncTask;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/SomcCallRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SomcCallRecorder;Lcom/android/phone/SomcCallRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder$RecorderTask;-><init>(Lcom/android/phone/SomcCallRecorder;)V

    return-void
.end method

.method private record(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 10
    .parameter "recorder"
    .parameter "filepath"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 154
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 155
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 159
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 160
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/SomcCallRecorder;->access$102(Lcom/android/phone/SomcCallRecorder;J)J

    .line 161
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    const/4 v3, 0x1

    #calls: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v2, v3}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;I)V

    .line 162
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #getter for: Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/SomcCallRecorder;->access$400(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #getter for: Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/phone/SomcCallRecorder;->access$300(Lcom/android/phone/SomcCallRecorder;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_0

    .line 165
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    goto :goto_0

    .line 169
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 176
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v2, v8, v9}, Lcom/android/phone/SomcCallRecorder;->access$102(Lcom/android/phone/SomcCallRecorder;J)J

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v7

    invoke-static {v2, v3, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 180
    :goto_1
    return-void

    .line 170
    :catch_1
    move-exception v1

    .line 171
    .local v1, ise:Ljava/lang/IllegalStateException;
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 176
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v2, v8, v9}, Lcom/android/phone/SomcCallRecorder;->access$102(Lcom/android/phone/SomcCallRecorder;J)J

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v7

    invoke-static {v2, v3, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_1

    .line 172
    .end local v1           #ise:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 173
    .local v0, ioe:Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->cancel(Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 176
    iget-object v2, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v2, v8, v9}, Lcom/android/phone/SomcCallRecorder;->access$102(Lcom/android/phone/SomcCallRecorder;J)J

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    aput-object p2, v3, v7

    invoke-static {v2, v3, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_1

    .line 175
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 176
    iget-object v3, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #setter for: Lcom/android/phone/SomcCallRecorder;->mStartTime:J
    invoke-static {v3, v8, v9}, Lcom/android/phone/SomcCallRecorder;->access$102(Lcom/android/phone/SomcCallRecorder;J)J

    .line 177
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p2, v4, v7

    invoke-static {v3, v4, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    throw v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 115
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "SomcCallRecorder"

    const-string v5, "doInBackground() : Create file ..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, file:Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #calls: Lcom/android/phone/SomcCallRecorder;->createNewFile()Ljava/io/File;
    invoke-static {v4}, Lcom/android/phone/SomcCallRecorder;->access$000(Lcom/android/phone/SomcCallRecorder;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 124
    :goto_0
    if-nez v0, :cond_1

    .line 125
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create audio file..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->cancel(Z)Z

    .line 140
    :goto_1
    return-object v6

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, se:Ljava/lang/SecurityException;
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create file..."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    .end local v3           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, ioe:Ljava/io/IOException;
    const-string v4, "SomcCallRecorder"

    const-string v5, "Error to create file..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_1
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    .line 130
    .local v2, recorder:Landroid/media/MediaRecorder;
    new-instance v4, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;-><init>(Lcom/android/phone/SomcCallRecorder$RecorderTask;)V

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 136
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "SomcCallRecorder"

    const-string v5, "doInBackground() : Start recording ..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    monitor-enter v5

    .line 138
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/phone/SomcCallRecorder$RecorderTask;->record(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    .line 139
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 184
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcCallRecorder"

    const-string v1, "onCancelled() ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #getter for: Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcCallRecorder;->access$400(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    #getter for: Lcom/android/phone/SomcCallRecorder;->mCheckStorageRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcCallRecorder;->access$300(Lcom/android/phone/SomcCallRecorder;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    const/4 v1, 0x2

    #calls: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;I)V

    .line 187
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 188
    return-void
.end method
