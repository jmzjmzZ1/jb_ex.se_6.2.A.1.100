.class Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;
.super Lcom/android/phone/SomcCallRecorder$EventHandler;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallRecorderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    .line 520
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallRecorder$EventHandler;-><init>(Landroid/app/Activity;)V

    .line 521
    #getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {p1}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0, p0}, Lcom/android/phone/SomcCallRecorder;->registerEventHandler(Lcom/android/phone/SomcCallRecorder$EventHandler;)V

    .line 522
    #getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {p1}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->onStartRecording()V

    .line 523
    :cond_0
    return-void
.end method


# virtual methods
.method public onNotEnoughStorage(Z)V
    .locals 4
    .parameter "occurWhenStart"

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    const v0, 0x7f0b0118

    .line 549
    .local v0, msgId:I
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 551
    return-void

    .line 546
    .end local v0           #msgId:I
    :cond_0
    const v0, 0x7f0b0119

    .restart local v0       #msgId:I
    goto :goto_0
.end method

.method public onStartRecording()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    return-void
.end method

.method public onStopRecording()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 533
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingTime(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->unregisterEventHandler()V

    .line 538
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method
