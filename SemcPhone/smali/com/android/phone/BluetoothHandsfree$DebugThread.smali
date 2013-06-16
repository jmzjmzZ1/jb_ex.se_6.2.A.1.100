.class Lcom/android/phone/BluetoothHandsfree$DebugThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 3310
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3310
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3349
    const/16 v18, 0x1

    .line 3350
    .local v18, oldService:Z
    const/16 v17, 0x0

    .line 3351
    .local v17, oldRoam:Z
    const/16 v16, 0x0

    .line 3353
    .local v16, oldAudio:Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->inDebug()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$8400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3354
    const-string v3, "debug.bt.hfp.battery"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 3355
    .local v11, batteryLevel:I
    if-ltz v11, :cond_1

    const/4 v3, 0x5

    if-gt v11, v3, :cond_1

    .line 3356
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 3357
    .local v15, intent:Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v15, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3358
    const-string v3, "scale"

    const/4 v4, 0x5

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v3, v15}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 3362
    .end local v15           #intent:Landroid/content/Intent;
    :cond_1
    const/16 v20, 0x0

    .line 3363
    .local v20, serviceStateChanged:Z
    const-string v3, "debug.bt.hfp.service"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    .line 3364
    if-nez v18, :cond_9

    const/16 v18, 0x1

    .line 3365
    :goto_1
    const/16 v20, 0x1

    .line 3367
    :cond_2
    const-string v3, "debug.bt.hfp.roam"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_3

    .line 3368
    if-nez v17, :cond_a

    const/16 v17, 0x1

    .line 3369
    :goto_2
    const/16 v20, 0x1

    .line 3371
    :cond_3
    if-eqz v20, :cond_4

    .line 3372
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3373
    .local v10, b:Landroid/os/Bundle;
    const-string v4, "state"

    if-eqz v18, :cond_b

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v10, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3374
    const-string v3, "roaming"

    move/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v10}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$1800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    .line 3378
    .end local v10           #b:Landroid/os/Bundle;
    :cond_4
    const-string v3, "debug.bt.hfp.audio"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_5

    .line 3379
    if-nez v16, :cond_c

    const/16 v16, 0x1

    .line 3380
    :goto_4
    if-eqz v16, :cond_d

    .line 3381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 3387
    :cond_5
    :goto_5
    const-string v3, "debug.bt.hfp.signal"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3388
    .local v2, signalLevel:I
    if-ltz v2, :cond_6

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_6

    .line 3389
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 3391
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 3392
    .restart local v15       #intent:Landroid/content/Intent;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3393
    .local v12, data:Landroid/os/Bundle;
    invoke-virtual {v1, v12}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 3394
    invoke-virtual {v15, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v3, v15}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 3398
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v12           #data:Landroid/os/Bundle;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "debug.bt.hfp.clcc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$7500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    .line 3402
    :cond_7
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3407
    const-string v3, "debug.bt.unsol.inband"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 3409
    .local v14, inBandRing:I
    if-eqz v14, :cond_8

    const/4 v3, 0x1

    if-ne v14, v3, :cond_0

    .line 3410
    :cond_8
    new-instance v19, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3412
    .local v19, result:Landroid/bluetooth/AtCommandResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+BSIR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 3413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3364
    .end local v2           #signalLevel:I
    .end local v14           #inBandRing:I
    .end local v19           #result:Landroid/bluetooth/AtCommandResult;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 3368
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 3373
    .restart local v10       #b:Landroid/os/Bundle;
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 3379
    .end local v10           #b:Landroid/os/Bundle;
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 3383
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto/16 :goto_5

    .line 3403
    .restart local v2       #signalLevel:I
    :catch_0
    move-exception v13

    .line 3416
    .end local v2           #signalLevel:I
    .end local v11           #batteryLevel:I
    .end local v20           #serviceStateChanged:Z
    :cond_e
    return-void
.end method
