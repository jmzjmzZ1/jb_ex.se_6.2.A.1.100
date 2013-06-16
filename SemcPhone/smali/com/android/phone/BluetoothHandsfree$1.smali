.class Lcom/android/phone/BluetoothHandsfree$1;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1517
    iget-object v5, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v5

    .line 1518
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1616
    :cond_0
    :goto_0
    monitor-exit v5

    .line 1617
    return-void

    .line 1520
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 1522
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->scoClosed()V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    goto :goto_0

    .line 1616
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1525
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5200(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1526
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$5202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1527
    const-string v3, "BT HS/HF"

    const-string v4, "Timeout waiting for call to start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v4, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1529
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1530
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5300(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1535
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1536
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$5402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1537
    const-string v3, "BT HS/HF"

    const-string v4, "Timeout waiting for voice recognition to start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v4, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1543
    const-string v3, "BT HS/HF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "). Starting SCO anyway"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteBrsf:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_6

    .line 1547
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    if-nez v3, :cond_4

    .line 1548
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 1549
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BT HS/HF"

    const-string v4, "+BCS:2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1551
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v4, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 1557
    :goto_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1558
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 1559
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1561
    .local v0, codec_msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1576
    .end local v0           #codec_msg:Landroid/os/Message;
    :goto_2
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForA2dp:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3402(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 1553
    :cond_2
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "BT HS/HF"

    const-string v4, "+BCS:1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    :cond_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 1555
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v4, "+BCS:1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_1

    .line 1564
    :cond_4
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 1565
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "bt_samplerate=16000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1566
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V

    goto :goto_2

    .line 1568
    :cond_5
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "bt_samplerate=8000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1569
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V

    goto :goto_2

    .line 1573
    :cond_6
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 1574
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "bt_samplerate=8000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_2

    .line 1580
    :pswitch_4
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 1582
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v7, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v7}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v7

    if-ne v7, v8, :cond_7

    :goto_3
    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v6, v3}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 1583
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1584
    :catch_0
    move-exception v2

    .line 1585
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->fallbackNb()V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1300(Lcom/android/phone/BluetoothHandsfree;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    move v3, v4

    .line 1582
    goto :goto_3

    .line 1591
    :pswitch_5
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1592
    const-string v3, "BT HS/HF"

    const-string v4, "Timeout codec connection setup, starting SCO anyway using NB"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "bt_samplerate=8000"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1594
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #calls: Lcom/android/phone/BluetoothHandsfree;->connectScoThread(Z)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4200(Lcom/android/phone/BluetoothHandsfree;Z)V

    .line 1595
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_0

    .line 1599
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1600
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHandsfree;->access$5600(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 1601
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v4, 0xa

    #calls: Lcom/android/phone/BluetoothHandsfree;->setAudioState(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v3, v4, v1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 1605
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_7
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1607
    :try_start_4
    iget-object v6, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v6

    #getter for: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I
    invoke-static {v6}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$5700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)I

    move-result v6

    if-ne v6, v3, :cond_8

    .line 1611
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 1613
    :cond_8
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
