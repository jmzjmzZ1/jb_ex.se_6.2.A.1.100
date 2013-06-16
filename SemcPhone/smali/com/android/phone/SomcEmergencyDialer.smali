.class public Lcom/android/phone/SomcEmergencyDialer;
.super Landroid/app/Activity;
.source "SomcEmergencyDialer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDTMFToneEnabled:Z

.field private mDelete:Landroid/view/View;

.field private mDigits:Lcom/android/phone/SomcEditText;

.field private mGreen:Landroid/view/View;

.field private mLastNumber:Ljava/lang/String;

.field private mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mVibrateOn:Z

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Lcom/android/phone/SomcEmergencyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcEmergencyDialer$1;-><init>(Lcom/android/phone/SomcEmergencyDialer;)V

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkVibrationSettings()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 608
    iput-boolean v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z

    .line 609
    iget-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    if-nez v5, :cond_4

    .line 610
    const/4 v2, 0x0

    .line 612
    .local v2, pattern:[I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 620
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    array-length v5, v2

    if-nez v5, :cond_3

    .line 621
    :cond_1
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_2

    .line 622
    const-string v4, "emergency_dialer"

    const-string v5, "Vibrate pattern is null."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .end local v2           #pattern:[I
    :cond_2
    :goto_1
    return-void

    .line 614
    .restart local v2       #pattern:[I
    :catch_0
    move-exception v1

    .line 615
    .local v1, nfe:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    .line 616
    const-string v5, "emergency_dialer"

    const-string v6, "Vibrate pattern missing!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 628
    .end local v1           #nfe:Landroid/content/res/Resources$NotFoundException;
    :cond_3
    array-length v5, v2

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    .line 629
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 630
    iget-object v5, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    aget v6, v2, v0

    int-to-long v6, v6

    aput-wide v6, v5, v0

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 635
    .end local v0           #i:I
    .end local v2           #pattern:[I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 637
    .local v3, val:I
    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 638
    .end local v3           #val:I
    :catch_1
    move-exception v1

    .line 639
    .restart local v1       #nfe:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_2

    .line 640
    const-string v4, "emergency_dialer"

    const-string v5, "Fail to retrieve system setting HAPTIC_FEEDBACK_ENABLED."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"

    .prologue
    .line 561
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    const v0, 0x7f0b004e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/SomcEmergencyDialer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private releaseSomcTonePlayer()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 230
    :cond_0
    return-void
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 286
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method private declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrateOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 605
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 601
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected addChar(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 413
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getSelectionStart()I

    move-result v1

    .line 414
    .local v1, pos:I
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 415
    .local v2, st:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v2}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->length()I

    move-result v0

    .line 424
    .local v0, isEmpty:I
    if-lez v0, :cond_0

    .line 425
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->vibrate()V

    .line 428
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 404
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 410
    :cond_1
    return-void

    .line 322
    :pswitch_1
    const/16 v3, 0x31

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 323
    const-string v3, "1"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_2
    const/16 v3, 0x32

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 328
    const-string v3, "2"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :pswitch_3
    const/16 v3, 0x33

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 333
    const-string v3, "3"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_4
    const/16 v3, 0x34

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 338
    const-string v3, "4"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :pswitch_5
    const/16 v3, 0x35

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 343
    const-string v3, "5"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_6
    const/16 v3, 0x36

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 348
    const-string v3, "6"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :pswitch_7
    const/16 v3, 0x37

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 353
    const-string v3, "7"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_8
    const/16 v3, 0x38

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 358
    const-string v3, "8"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :pswitch_9
    const/16 v3, 0x39

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 363
    const-string v3, "9"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_a
    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 368
    const-string v3, "0"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :pswitch_b
    const/16 v3, 0x23

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 373
    const-string v3, "#"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :pswitch_c
    const/16 v3, 0x2a

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    .line 378
    const-string v3, "*"

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->placeCall()V

    goto/16 :goto_0

    .line 386
    :pswitch_e
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getSelectionStart()I

    move-result v2

    .line 387
    .local v2, start:I
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getSelectionEnd()I

    move-result v0

    .line 389
    .local v0, end:I
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    .local v1, st:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 392
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v1}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 395
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x7f070058
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 152
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 154
    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->setContentView(I)V

    .line 156
    const v3, 0x7f070067

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/phone/SomcEditText;

    iput-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    .line 157
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, p0}, Lcom/android/phone/SomcEditText;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, p0}, Lcom/android/phone/SomcEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, p0}, Lcom/android/phone/SomcEditText;->setSomcEmergencyDialer(Lcom/android/phone/SomcEmergencyDialer;)V

    .line 160
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v5}, Lcom/android/phone/SomcEditText;->setInputType(I)V

    .line 161
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const v4, 0x7f0b004f

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setHint(I)V

    .line 162
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v6}, Lcom/android/phone/SomcEditText;->setSingleLine(Z)V

    .line 163
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 164
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v6}, Lcom/android/phone/SomcEditText;->setFocusable(Z)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v5}, Lcom/android/phone/SomcEditText;->setLongClickable(Z)V

    .line 167
    const v3, 0x7f070069

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    .line 168
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v7, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v3, :cond_4

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->setupKeypad()V

    .line 175
    const v3, 0x7f070066

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    .line 176
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 189
    :goto_0
    const/4 v2, 0x0

    .line 191
    .local v2, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v3, "displayNumber"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    :cond_1
    if-nez v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 201
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_2

    const-string v3, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 203
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tel:#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    const-string v2, "#"

    .line 212
    .end local v0           #data:Landroid/net/Uri;
    :cond_2
    if-eqz v2, :cond_3

    .line 213
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3, v2}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setSelection(I)V

    .line 217
    :cond_3
    new-instance v3, Lcom/android/phone/SomcTonePlayer;

    const/16 v4, 0x32

    invoke-direct {v3, v8, v4}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 218
    invoke-virtual {p0, v8}, Lcom/android/phone/SomcEmergencyDialer;->setVolumeControlStream(I)V

    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/SomcEmergencyDialer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    return-void

    .line 181
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    .end local v2           #number:Ljava/lang/String;
    :cond_4
    const v3, 0x7f070066

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0141

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v3}, Lcom/android/phone/SomcEditText;->requestFocus()Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, dialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_0

    .line 573
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0096

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 581
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->releaseSomcTonePlayer()V

    .line 236
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcEditText;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, p0}, Lcom/android/phone/SomcEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :cond_2
    const v1, 0x7f070058

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v1, 0x7f07005c

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v1, 0x7f07005d

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v1, 0x7f07005f

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    const v1, 0x7f070060

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v1, 0x7f070063

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v1, 0x7f070062

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 270
    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 435
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 447
    :goto_0
    return v1

    .line 437
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 443
    :sswitch_1
    const-string v2, "+"

    invoke-virtual {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->addChar(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x7f070062 -> :sswitch_1
        0x7f070066 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 482
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "emergency_dialer"

    const-string v2, "turning keyguard back on and closing the dialer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 485
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 486
    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 487
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 489
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->releaseSomcTonePlayer()V

    .line 490
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 587
    if-nez p1, :cond_0

    move-object v0, p2

    .line 588
    check-cast v0, Landroid/app/AlertDialog;

    .line 589
    .local v0, alert:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcEmergencyDialer;->createErrorMessage(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 591
    .end local v0           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 274
    const-string v0, "lastNumber"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 275
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDTMFToneEnabled:Z

    .line 460
    invoke-direct {p0}, Lcom/android/phone/SomcEmergencyDialer;->checkVibrationSettings()V

    .line 462
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-nez v1, :cond_0

    .line 463
    new-instance v1, Lcom/android/phone/SomcTonePlayer;

    const/4 v2, 0x2

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 468
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    .line 469
    const-string v1, "emergency_dialer"

    const-string v2, "turning keyguard off, set to long timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneApp;

    .line 471
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v1, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->MEDIUM:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    .line 472
    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 474
    return-void

    .line 457
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 280
    const-string v0, "lastNumber"

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "displayNumber"

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 112
    .local v0, inputLength:I
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: inputLength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changeCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    if-gtz v0, :cond_2

    .line 114
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method placeCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 496
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    invoke-virtual {v1}, Lcom/android/phone/SomcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 500
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/Constants;->sTaiwanEmergencyNumberConversionInfo:Lcom/android/phone/Constants$NumberConversionInfo;

    invoke-static {p0, v5, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 506
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    .line 507
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placing call to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    :cond_2
    :goto_0
    return-void

    .line 513
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 515
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEmergencyDialer;->startActivity(Landroid/content/Intent;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/phone/SomcEmergencyDialer;->finish()V

    goto :goto_0

    .line 519
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_5

    .line 520
    const-string v1, "emergency_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejecting bad requested number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcEmergencyDialer;->mLastNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDigits:Lcom/android/phone/SomcEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 524
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcEmergencyDialer;->showDialog(I)V

    .line 525
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mGreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lcom/android/phone/SomcEmergencyDialer;->mDelete:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method playTone(C)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 539
    iget-boolean v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/SomcEmergencyDialer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 549
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 550
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/phone/SomcEmergencyDialer;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/16 v3, 0x96

    invoke-virtual {v2, p1, v3}, Lcom/android/phone/SomcTonePlayer;->playToneByChar(CI)V

    goto :goto_0
.end method
