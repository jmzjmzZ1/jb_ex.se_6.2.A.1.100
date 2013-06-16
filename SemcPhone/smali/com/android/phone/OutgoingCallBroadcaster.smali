.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mWaitingSpinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    iput-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private handleNonVoiceCapable(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 610
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNonVoiceCapable: handling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on non-voice-capable device..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 614
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 631
    .local v1, newIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- relaunching as a DIAL intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 642
    .end local v1           #newIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 639
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    goto :goto_0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 346
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_0

    .line 347
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processIntent() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    sget-boolean v4, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v4, :cond_1

    .line 352
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "This device is detected as non-voice-capable device."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/OutgoingCallBroadcaster;->handleNonVoiceCapable(Landroid/content/Intent;)V

    .line 583
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, action:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, number:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 365
    .local v22, uri:Landroid/net/Uri;
    if-nez v22, :cond_8

    const/16 v20, 0x0

    .line 366
    .local v20, schema:Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "sip"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 367
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 368
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 380
    .end local v20           #schema:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    const-string v4, "android.intent.action.CALL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 385
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v4, "android.intent.action.CALL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_4

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 395
    .restart local v22       #uri:Landroid/net/Uri;
    if-nez v22, :cond_a

    const/16 v20, 0x0

    .line 396
    .restart local v20       #schema:Ljava/lang/String;
    :goto_3
    sget-object v4, Lcom/android/phone/Constants;->sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v4}, Lcom/android/phone/SomcPhoneUtils;->convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;

    move-result-object v15

    .line 399
    .local v15, convertedNumber:Ljava/lang/String;
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 400
    const-string v12, "android.intent.action.CALL_EMERGENCY"

    .line 401
    move-object v10, v15

    .line 402
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v4, "tel"

    const/4 v6, 0x0

    invoke-static {v4, v10, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 418
    .end local v15           #convertedNumber:Ljava/lang/String;
    .end local v20           #schema:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_4
    invoke-static {v10}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, filteredNumber:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v18

    .line 421
    .local v18, isExactEmergencyNumber:Z
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v19

    .line 423
    .local v19, isPotentialEmergencyNumber:Z
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_5

    .line 424
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Checking restrictions for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     isExactEmergencyNumber     = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     isPotentialEmergencyNumber = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_5
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 437
    if-eqz v19, :cond_b

    .line 438
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Use ACTION_CALL_EMERGENCY as an action instead."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v12, "android.intent.action.CALL_EMERGENCY"

    .line 444
    :goto_4
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - updating action from CALL_PRIVILEGED to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    :cond_7
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 449
    if-eqz v19, :cond_c

    .line 450
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call potential emergency number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "Launching default dialer instead..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v17, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 457
    .local v17, invokeFrameworkDialer:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 365
    .end local v16           #filteredNumber:Ljava/lang/String;
    .end local v17           #invokeFrameworkDialer:Landroid/content/Intent;
    .end local v18           #isExactEmergencyNumber:Z
    .end local v19           #isPotentialEmergencyNumber:Z
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 371
    .end local v22           #uri:Landroid/net/Uri;
    :cond_9
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The number obtained from Intent is null."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 395
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_a
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 442
    .end local v22           #uri:Landroid/net/Uri;
    .restart local v16       #filteredNumber:Ljava/lang/String;
    .restart local v18       #isExactEmergencyNumber:Z
    .restart local v19       #isPotentialEmergencyNumber:Z
    :cond_b
    const-string v12, "android.intent.action.CALL"

    goto/16 :goto_4

    .line 462
    :cond_c
    const/4 v13, 0x0

    .line 489
    .local v13, callNow:Z
    :goto_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    .line 500
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 505
    if-eqz v10, :cond_d

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 506
    :cond_d
    const-string v4, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 507
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 463
    .end local v13           #callNow:Z
    :cond_e
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 471
    if-nez v19, :cond_f

    .line 472
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call non-potential-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with EMERGENCY_CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Finish the Activity immediately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 478
    :cond_f
    const/4 v13, 0x1

    .restart local v13       #callNow:Z
    goto :goto_5

    .line 480
    .end local v13           #callNow:Z
    :cond_10
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Finish the Activity immediately."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 512
    .restart local v13       #callNow:Z
    :cond_11
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v13, 0x1

    .line 517
    :cond_12
    if-eqz v13, :cond_13

    .line 522
    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate(): callNow case! Calling placeCall(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 537
    :cond_13
    const-string v4, "com.android.phone.CALL_ORIGIN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, callOrigin:Ljava/lang/String;
    if-eqz v14, :cond_16

    .line 539
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_14

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Call origin is passed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_14
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 556
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 557
    .restart local v22       #uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v21

    .line 558
    .local v21, scheme:Ljava/lang/String;
    const-string v4, "sip"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 559
    :cond_15
    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, "The requested number was detected as SIP call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 542
    .end local v21           #scheme:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :cond_16
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_17

    const-string v4, "OutgoingCallBroadcaster"

    const-string v6, " - Call origin is not passed. Reset current one."

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->resetLatestActiveCallOrigin()V

    goto :goto_6

    .line 569
    .restart local v21       #scheme:Ljava/lang/String;
    .restart local v22       #uri:Landroid/net/Uri;
    :cond_18
    new-instance v5, Landroid/content/Intent;

    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v5, broadcastIntent:Landroid/content/Intent;
    if-eqz v10, :cond_19

    .line 571
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v5, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    :cond_19
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 574
    const-string v4, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v5, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    const-string v4, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_1a

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_1a
    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v7, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "OutgoingCallBroadcaster"

    const-string v1, "startSipCallOptionHandler..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    const-string v1, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.SIP_SELECT_PHONE"

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    const-class v2, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    const-string v2, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 244
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 678
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 670
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 687
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 688
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->setContentView(I)V

    .line 263
    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/android/phone/OutgoingCallBroadcaster;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/phone/OutgoingCallBroadcaster;->mWaitingSpinner:Landroid/widget/ProgressBar;

    .line 266
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 269
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 271
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    .line 272
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icicle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - configuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    if-eqz p1, :cond_2

    .line 291
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->processIntent(Landroid/content/Intent;)V

    .line 309
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "At the end of onCreate(). isFinishing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 647
    packed-switch p1, :pswitch_data_0

    .line 657
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog: unexpected ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    .line 661
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 649
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 655
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 598
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 599
    return-void
.end method
