.class Lcom/android/phone/PhoneApp$2;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 409
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 575
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 416
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 439
    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f08

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    const-string v4, "PhoneApp"

    const-string v5, "Ignoring EVENT_PERSO_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 448
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v0}, Lcom/android/phone/PhoneApp;->initIccDepersonalizationPanel(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 460
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "PhoneApp"

    const-string v5, "- updating in-call notification from handler..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 465
    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 469
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 473
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 477
    :sswitch_7
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 487
    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 489
    .local v2, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_4

    .line 490
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-nez v4, :cond_4

    .line 492
    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_5

    .line 494
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 503
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 506
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    const/16 v4, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneApp$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneApp$2;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 498
    :cond_5
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 515
    .end local v2           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v5, "READY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 519
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 520
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 521
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneApp;->access$502(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 523
    :cond_6
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 525
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 537
    :sswitch_a
    const/4 v1, 0x0

    .line 538
    .local v1, inDockMode:Z
    sget v4, Lcom/android/phone/PhoneApp;->mDockState:I

    if-eq v4, v7, :cond_7

    sget v4, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 540
    :cond_7
    const/4 v1, 0x1

    .line 542
    :cond_8
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_9

    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_9
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 546
    .restart local v2       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 549
    :cond_a
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v7}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 551
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 552
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/SomcInCallScreen;->requestUpdateScreen()V

    goto/16 :goto_0

    .line 559
    .end local v1           #inDockMode:Z
    .end local v2           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_b
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 560
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v3

    .line 564
    .local v3, ttyMode:I
    :goto_2
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 562
    .end local v3           #ttyMode:I
    :cond_b
    const/4 v3, 0x0

    .restart local v3       #ttyMode:I
    goto :goto_2

    .line 568
    .end local v3           #ttyMode:I
    :sswitch_c
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 572
    :sswitch_d
    iget-object v4, p0, Lcom/android/phone/PhoneApp$2;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
