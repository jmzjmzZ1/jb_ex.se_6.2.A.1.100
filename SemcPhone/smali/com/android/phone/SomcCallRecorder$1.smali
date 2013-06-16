.class Lcom/android/phone/SomcCallRecorder$1;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallRecorder;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$1;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v1, 0x66

    .line 195
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$1;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    #calls: Lcom/android/phone/SomcCallRecorder;->checkStorageSpace()Z
    invoke-static {}, Lcom/android/phone/SomcCallRecorder;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$1;->this$0:Lcom/android/phone/SomcCallRecorder;

    #getter for: Lcom/android/phone/SomcCallRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcCallRecorder;->access$400(Lcom/android/phone/SomcCallRecorder;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$1;->this$0:Lcom/android/phone/SomcCallRecorder;

    #calls: Lcom/android/phone/SomcCallRecorder;->handleEvent(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallRecorder;->access$200(Lcom/android/phone/SomcCallRecorder;I)V

    .line 200
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$1;->this$0:Lcom/android/phone/SomcCallRecorder;

    #calls: Lcom/android/phone/SomcCallRecorder;->handleError(I)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallRecorder;->access$600(Lcom/android/phone/SomcCallRecorder;I)V

    goto :goto_0
.end method
