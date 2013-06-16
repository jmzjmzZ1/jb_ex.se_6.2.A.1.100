.class public Lcom/android/phone/SomcPhoneUtils;
.super Ljava/lang/Object;
.source "SomcPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcPhoneUtils$1;,
        Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final STATUS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SomcPhoneUtils;->STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static convertNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/phone/Constants$NumberConversionInfo;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1173
    if-eqz p1, :cond_1

    const-string v0, "tel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-object p2

    .line 1176
    :cond_1
    iget-object v1, p3, Lcom/android/phone/Constants$NumberConversionInfo;->sourceNumberArray:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1177
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1178
    iget-object p2, p3, Lcom/android/phone/Constants$NumberConversionInfo;->convertedNumber:Ljava/lang/String;

    goto :goto_0

    .line 1176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 805
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 806
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "dualmic_enabled"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, dualMic:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 808
    :cond_0
    const/4 v2, 0x1

    .line 810
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 1013
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1026
    .end local p0
    .local v0, arr$:[Ljava/lang/String;
    .local v1, i$:I
    .local v2, len$:I
    .local v4, prefixes:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1018
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #prefixes:[Ljava/lang/String;
    .restart local p0
    :cond_1
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "*31#"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "#31#"

    aput-object v6, v4, v5

    .line 1021
    .restart local v4       #prefixes:[Ljava/lang/String;
    move-object v0, v4

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1022
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1023
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1021
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getAudioParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "keys"

    .prologue
    const/4 v8, 0x0

    .line 674
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 675
    .local v2, context:Landroid/content/Context;
    const-string v9, "audio"

    invoke-virtual {v2, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 676
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, parameter:Ljava/lang/String;
    if-nez v5, :cond_1

    move-object v7, v8

    .line 691
    :cond_0
    :goto_0
    return-object v7

    .line 679
    :cond_1
    const/4 v6, 0x0

    .line 680
    .local v6, validValues:[Ljava/lang/String;
    const-string v9, "voice_personal_eq"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 681
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f06000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 686
    :cond_2
    :goto_1
    if-nez v6, :cond_5

    move-object v7, v8

    goto :goto_0

    .line 682
    :cond_3
    const-string v9, "wide_voice_enable"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "st_enable"

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 684
    :cond_4
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    .end local v6           #validValues:[Ljava/lang/String;
    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    .restart local v6       #validValues:[Ljava/lang/String;
    goto :goto_1

    .line 688
    :cond_5
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v7, v0, v3

    .line 689
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v7           #value:Ljava/lang/String;
    :cond_6
    move-object v7, v8

    .line 691
    goto :goto_0
.end method

.method static getCallFailedString(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "call"

    .prologue
    .line 410
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 411
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const/4 v3, 0x0

    .line 413
    .local v3, resID:I
    if-nez v0, :cond_1

    .line 416
    const v3, 0x7f0b001a

    .line 650
    :goto_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 651
    const v3, 0x7f0b001a

    .line 653
    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 421
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRawDisconnectCause()I

    move-result v2

    .line 422
    .local v2, rawCause:I
    sparse-switch v2, :sswitch_data_0

    .line 571
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 572
    .local v1, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/phone/SomcPhoneUtils$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 583
    const v3, 0x7f0b001a

    goto :goto_0

    .line 424
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :sswitch_0
    const v3, 0x7f0b001b

    .line 425
    goto :goto_0

    .line 427
    :sswitch_1
    const v3, 0x7f0b001c

    .line 428
    goto :goto_0

    .line 430
    :sswitch_2
    const v3, 0x7f0b001d

    .line 431
    goto :goto_0

    .line 433
    :sswitch_3
    const v3, 0x7f0b001e

    .line 434
    goto :goto_0

    .line 436
    :sswitch_4
    const v3, 0x7f0b001f

    .line 437
    goto :goto_0

    .line 439
    :sswitch_5
    const v3, 0x7f0b0020

    .line 440
    goto :goto_0

    .line 442
    :sswitch_6
    const v3, 0x7f0b0021

    .line 443
    goto :goto_0

    .line 445
    :sswitch_7
    const v3, 0x7f0b0022

    .line 446
    goto :goto_0

    .line 448
    :sswitch_8
    const v3, 0x7f0b0023

    .line 449
    goto :goto_0

    .line 451
    :sswitch_9
    const v3, 0x7f0b0024

    .line 452
    goto :goto_0

    .line 454
    :sswitch_a
    const v3, 0x7f0b0025

    .line 455
    goto :goto_0

    .line 457
    :sswitch_b
    const v3, 0x7f0b0026

    .line 458
    goto :goto_0

    .line 460
    :sswitch_c
    const v3, 0x7f0b0027

    .line 461
    goto :goto_0

    .line 463
    :sswitch_d
    const v3, 0x7f0b0028

    .line 464
    goto :goto_0

    .line 466
    :sswitch_e
    const v3, 0x7f0b0029

    .line 467
    goto :goto_0

    .line 469
    :sswitch_f
    const v3, 0x7f0b002a

    .line 470
    goto :goto_0

    .line 472
    :sswitch_10
    const v3, 0x7f0b002b

    .line 473
    goto :goto_0

    .line 475
    :sswitch_11
    const v3, 0x7f0b002c

    .line 476
    goto/16 :goto_0

    .line 478
    :sswitch_12
    const v3, 0x7f0b002d

    .line 479
    goto/16 :goto_0

    .line 481
    :sswitch_13
    const v3, 0x7f0b002e

    .line 482
    goto/16 :goto_0

    .line 484
    :sswitch_14
    const v3, 0x7f0b002f

    .line 485
    goto/16 :goto_0

    .line 487
    :sswitch_15
    const v3, 0x7f0b0030

    .line 488
    goto/16 :goto_0

    .line 490
    :sswitch_16
    const v3, 0x7f0b0031

    .line 491
    goto/16 :goto_0

    .line 493
    :sswitch_17
    const v3, 0x7f0b0032

    .line 494
    goto/16 :goto_0

    .line 496
    :sswitch_18
    const v3, 0x7f0b0033

    .line 497
    goto/16 :goto_0

    .line 499
    :sswitch_19
    const v3, 0x7f0b0034

    .line 500
    goto/16 :goto_0

    .line 502
    :sswitch_1a
    const v3, 0x7f0b0035

    .line 503
    goto/16 :goto_0

    .line 505
    :sswitch_1b
    const v3, 0x7f0b0036

    .line 506
    goto/16 :goto_0

    .line 508
    :sswitch_1c
    const v3, 0x7f0b0037

    .line 509
    goto/16 :goto_0

    .line 511
    :sswitch_1d
    const v3, 0x7f0b0038

    .line 512
    goto/16 :goto_0

    .line 514
    :sswitch_1e
    const v3, 0x7f0b0039

    .line 515
    goto/16 :goto_0

    .line 517
    :sswitch_1f
    const v3, 0x7f0b003a

    .line 518
    goto/16 :goto_0

    .line 520
    :sswitch_20
    const v3, 0x7f0b003b

    .line 521
    goto/16 :goto_0

    .line 523
    :sswitch_21
    const v3, 0x7f0b003c

    .line 524
    goto/16 :goto_0

    .line 526
    :sswitch_22
    const v3, 0x7f0b003d

    .line 527
    goto/16 :goto_0

    .line 529
    :sswitch_23
    const v3, 0x7f0b003e

    .line 530
    goto/16 :goto_0

    .line 532
    :sswitch_24
    const v3, 0x7f0b003f

    .line 533
    goto/16 :goto_0

    .line 535
    :sswitch_25
    const v3, 0x7f0b0040

    .line 536
    goto/16 :goto_0

    .line 538
    :sswitch_26
    const v3, 0x7f0b0041

    .line 539
    goto/16 :goto_0

    .line 541
    :sswitch_27
    const v3, 0x7f0b0042

    .line 542
    goto/16 :goto_0

    .line 544
    :sswitch_28
    const v3, 0x7f0b0043

    .line 545
    goto/16 :goto_0

    .line 547
    :sswitch_29
    const v3, 0x7f0b0044

    .line 548
    goto/16 :goto_0

    .line 550
    :sswitch_2a
    const v3, 0x7f0b0045

    .line 551
    goto/16 :goto_0

    .line 553
    :sswitch_2b
    const v3, 0x7f0b0046

    .line 554
    goto/16 :goto_0

    .line 556
    :sswitch_2c
    const v3, 0x7f0b0047

    .line 557
    goto/16 :goto_0

    .line 559
    :sswitch_2d
    const v3, 0x7f0b0048

    .line 560
    goto/16 :goto_0

    .line 562
    :sswitch_2e
    const v3, 0x7f0b0049

    .line 563
    goto/16 :goto_0

    .line 565
    :sswitch_2f
    const v3, 0x7f0b004a

    .line 566
    goto/16 :goto_0

    .line 568
    :sswitch_30
    const v3, 0x7f0b004b

    .line 569
    goto/16 :goto_0

    .line 574
    .restart local v1       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :pswitch_0
    const v3, 0x7f0b0017

    .line 575
    goto/16 :goto_0

    .line 577
    :pswitch_1
    const v3, 0x7f0b0018

    .line 578
    goto/16 :goto_0

    .line 580
    :pswitch_2
    const v3, 0x7f0b0055

    .line 581
    goto/16 :goto_0

    .line 590
    .end local v1           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    .end local v2           #rawCause:I
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 591
    .restart local v1       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v4, Lcom/android/phone/SomcPhoneUtils$1;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 645
    const v3, 0x7f0b001a

    goto/16 :goto_0

    .line 593
    :pswitch_3
    const v3, 0x7f0b0019

    .line 594
    goto/16 :goto_0

    .line 597
    :pswitch_4
    const v3, 0x7f0b000c

    .line 598
    goto/16 :goto_0

    .line 601
    :pswitch_5
    const v3, 0x7f0b0014

    .line 602
    goto/16 :goto_0

    .line 605
    :pswitch_6
    const v3, 0x7f0b0013

    .line 606
    goto/16 :goto_0

    .line 609
    :pswitch_7
    const v3, 0x7f0b0017

    .line 610
    goto/16 :goto_0

    .line 613
    :pswitch_8
    const v3, 0x7f0b0018

    .line 614
    goto/16 :goto_0

    .line 617
    :pswitch_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 618
    const v3, 0x7f0b0016

    goto/16 :goto_0

    .line 620
    :cond_3
    const v3, 0x7f0b0055

    .line 622
    goto/16 :goto_0

    .line 625
    :pswitch_a
    const v3, 0x7f0b0163

    .line 626
    goto/16 :goto_0

    .line 629
    :pswitch_b
    const v3, 0x7f0b0165

    .line 630
    goto/16 :goto_0

    .line 633
    :pswitch_c
    const v3, 0x7f0b0164

    .line 634
    goto/16 :goto_0

    .line 637
    :pswitch_d
    const v3, 0x7f0b0160

    .line 638
    goto/16 :goto_0

    .line 641
    :pswitch_e
    const v3, 0x7f0b0161

    .line 642
    goto/16 :goto_0

    .line 422
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x13 -> :sswitch_7
        0x15 -> :sswitch_8
        0x16 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x1b -> :sswitch_c
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1e -> :sswitch_f
        0x1f -> :sswitch_10
        0x22 -> :sswitch_11
        0x26 -> :sswitch_12
        0x29 -> :sswitch_13
        0x2a -> :sswitch_14
        0x2b -> :sswitch_15
        0x2c -> :sswitch_16
        0x2f -> :sswitch_17
        0x31 -> :sswitch_18
        0x32 -> :sswitch_19
        0x37 -> :sswitch_1a
        0x39 -> :sswitch_1b
        0x3a -> :sswitch_1c
        0x3f -> :sswitch_1d
        0x41 -> :sswitch_1e
        0x44 -> :sswitch_1f
        0x45 -> :sswitch_20
        0x46 -> :sswitch_21
        0x4f -> :sswitch_22
        0x51 -> :sswitch_23
        0x57 -> :sswitch_24
        0x58 -> :sswitch_25
        0x5b -> :sswitch_26
        0x5f -> :sswitch_27
        0x60 -> :sswitch_28
        0x61 -> :sswitch_29
        0x62 -> :sswitch_2a
        0x63 -> :sswitch_2b
        0x64 -> :sswitch_2c
        0x65 -> :sswitch_2d
        0x66 -> :sswitch_2e
        0x6f -> :sswitch_2f
        0x7f -> :sswitch_30
    .end sparse-switch

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "callerInfo"
    .parameter "numberPresentation"

    .prologue
    .line 389
    const-string v0, ""

    .line 391
    .local v0, name:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 392
    sget v1, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne p2, v1, :cond_3

    .line 393
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_1

    .line 394
    const v1, 0x7f0b00f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v2, :cond_2

    .line 396
    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 398
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_3
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_4
    invoke-static {p0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .line 300
    if-nez p0, :cond_0

    move-object v0, v1

    .line 302
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-object v1

    .line 300
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 302
    .restart local v0       #connection:Lcom/android/internal/telephony/Connection;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "prefFile"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, defValue:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 718
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 719
    check-cast p2, Ljava/lang/String;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 724
    :goto_0
    return-object v1

    .line 721
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 722
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #defValue:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 724
    .restart local p2       #defValue:Ljava/lang/Object;,"TT;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSnsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/phone/SomcInCallScreen$SnsInfo;
    .locals 14
    .parameter "cr"
    .parameter "contactUri"
    .parameter "number"

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, url:Ljava/lang/String;
    const/4 v11, 0x0

    .line 181
    .local v11, contactCursor:Landroid/database/Cursor;
    const-string v0, "content://com.android.contacts/data"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 186
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 187
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 193
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v11, p0, p1}, Lcom/android/phone/SomcPhoneUtils;->paserContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/phone/SomcInCallScreen$SnsInfo;

    move-result-object v12

    .line 195
    .local v12, resultInfo:Lcom/android/phone/SomcInCallScreen$SnsInfo;
    if-eqz v11, :cond_1

    .line 196
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_1
    return-object v12

    .line 188
    .end local v12           #resultInfo:Lcom/android/phone/SomcInCallScreen$SnsInfo;
    :cond_2
    const-string v0, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_0
.end method

.method static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCarMode()Z
    .locals 2

    .prologue
    .line 1133
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 791
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 792
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "dualmic_enabled"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, dualMic:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    const/4 v2, 0x1

    .line 796
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isEmergencyCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "call"

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, isEmergencyCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 337
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 342
    .end local v2           #number:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, isEmergencyNumber:Z
    if-eqz p0, :cond_1

    .line 313
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 315
    if-nez v0, :cond_1

    .line 320
    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "911"

    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 321
    :cond_0
    const/4 v0, 0x1

    .line 326
    :cond_1
    return v0
.end method

.method static isFarEndNoiseSuppressionExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 861
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 862
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "fens_enable"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, farEndNoise:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    :cond_0
    const/4 v2, 0x1

    .line 866
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isFarEndNoiseSuppressionOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 847
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 848
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "fens_enable"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, farEndNoise:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    const/4 v2, 0x1

    .line 852
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isInternatioalCallLockOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 958
    const-string v1, "international_call_lock_setting_pref"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 960
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "international_call_lock_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static isMessagingEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1190
    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1191
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1192
    const-string v2, "exit_on_sent"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1193
    const-string v2, "showUI"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1194
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static isNationalRoaming(Landroid/telephony/ServiceState;)Z
    .locals 7
    .parameter "ss"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 352
    const/4 v0, 0x0

    .line 354
    .local v0, equalsMcc:Z
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, operatorNumeric:Ljava/lang/String;
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, simNumeric:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 359
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 360
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    const-string v4, "SomcPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isNationalRoaming returns "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    const-string v3, "same"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    return v0

    .line 361
    :cond_1
    const-string v3, "different"

    goto :goto_0
.end method

.method public static isSystemOrSmartCardPackage(Landroid/content/Context;I)Z
    .locals 12
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 981
    const/16 v9, 0xbad

    if-eq p1, v9, :cond_0

    const/16 v9, 0x3e8

    if-ne p1, v9, :cond_2

    :cond_0
    move v7, v8

    .line 999
    :cond_1
    :goto_0
    return v7

    .line 985
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 986
    .local v5, packages:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v9, v5

    if-lez v9, :cond_1

    .line 989
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 991
    .local v4, pack:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 992
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 989
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 995
    :catch_0
    move-exception v1

    .line 996
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "SomcPhoneUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package name not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #pack:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 999
    goto :goto_0
.end method

.method static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 267
    const/4 v1, 0x0

    .line 269
    .local v1, skipVmCheck:Z
    const/4 v2, 0x0

    .line 271
    .local v2, vmNumber:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    :goto_0
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 283
    const/4 v3, 0x1

    .line 288
    :cond_0
    return v3

    .line 272
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Ljava/lang/SecurityException;
    const/4 v1, 0x1

    .line 278
    const-string v4, "SomcPhoneUtils"

    const-string v5, "Security exception in isVoiceMailNumber."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1163
    const-string v0, "SomcPhoneUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void
.end method

.method private static needShowCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1096
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1097
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needShowCallEndedInteraction  o="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 1098
    :cond_0
    instance-of v0, v0, Lcom/android/phone/SomcCallerInfo;

    if-nez v0, :cond_1

    .line 1128
    :goto_0
    return v3

    .line 1100
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1101
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    sget v4, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v4, :cond_6

    move v1, v2

    .line 1102
    :goto_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v4, v2

    .line 1105
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v2

    .line 1106
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v6, :cond_9

    :cond_2
    move v6, v2

    .line 1108
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 1109
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v8

    .line 1110
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1111
    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isBluetoothConnected()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    move v7, v2

    .line 1113
    :goto_5
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez v7, :cond_b

    move v0, v2

    .line 1116
    :goto_6
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v9, :cond_4

    .line 1117
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "needShowCallEndedInteraction  isNumberPresent:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isSingleCall:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isRegularNumber:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isEndedByOtherOrSelf:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isShowingCallScreen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,isBluetoothOrPhfConnected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ,isScreenOffAndBthPhfNotConnected:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 1128
    :cond_4
    if-eqz v1, :cond_c

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    if-eqz v6, :cond_c

    if-nez v8, :cond_5

    if-eqz v0, :cond_c

    :cond_5
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_c

    :goto_7
    move v3, v2

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 1101
    goto/16 :goto_1

    :cond_7
    move v4, v3

    .line 1102
    goto/16 :goto_2

    :cond_8
    move v5, v3

    .line 1105
    goto/16 :goto_3

    :cond_9
    move v6, v3

    .line 1106
    goto/16 :goto_4

    :cond_a
    move v7, v3

    .line 1111
    goto/16 :goto_5

    :cond_b
    move v0, v3

    .line 1113
    goto :goto_6

    :cond_c
    move v2, v3

    .line 1128
    goto :goto_7
.end method

.method private static final paserContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/phone/SomcInCallScreen$SnsInfo;
    .locals 10
    .parameter "cursor"
    .parameter "cr"
    .parameter "contactUri"

    .prologue
    .line 128
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 156
    :cond_1
    return-object v2

    .line 129
    :cond_2
    new-instance v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;

    invoke-direct {v2}, Lcom/android/phone/SomcInCallScreen$SnsInfo;-><init>()V

    .line 130
    .local v2, info:Lcom/android/phone/SomcInCallScreen$SnsInfo;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 132
    .local v0, contactID:I
    const-string v8, "content://com.android.contacts/data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    const-string v8, "contact_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsText:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 138
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/phone/SomcPhoneUtils;->queryStatus(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v4

    .line 139
    .local v4, snsCursor:Landroid/database/Cursor;
    if-eqz v4, :cond_3

    .line 140
    const-string v8, "status"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 142
    .local v5, statusClmn:I
    const-string v8, "status_ts"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 144
    .local v6, tsClmn:I
    const-string v8, "status_res_package"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 146
    .local v3, pkgClmn:I
    const-string v8, "status_icon"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, iconClmn:I
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsText:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsText:Ljava/lang/String;

    .line 150
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsPackage:Ljava/lang/String;

    .line 151
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->iconRes:I

    .line 152
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/phone/SomcInCallScreen$SnsInfo;->timeStamp:J

    goto :goto_1

    .line 134
    .end local v1           #iconClmn:I
    .end local v3           #pkgClmn:I
    .end local v4           #snsCursor:Landroid/database/Cursor;
    .end local v5           #statusClmn:I
    .end local v6           #tsClmn:I
    :cond_4
    const-string v8, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 135
    const-string v8, "_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 154
    .restart local v1       #iconClmn:I
    .restart local v3       #pkgClmn:I
    .restart local v4       #snsCursor:Landroid/database/Cursor;
    .restart local v5       #statusClmn:I
    .restart local v6       #tsClmn:I
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static queryRedirectingInfo(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V
    .locals 8
    .parameter "redirectingNumber"
    .parameter "contentResolver"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 212
    .local v3, contactRef:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V

    .line 214
    .local v0, nameAsyncQueryHandler:Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;
    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/SomcPhoneUtils$RedirectingNameAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private static final queryStatus(Ljava/lang/String;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7
    .parameter "aContactID"
    .parameter "cr"

    .prologue
    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, snsCursor:Landroid/database/Cursor;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 162
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/SomcPhoneUtils;->STATUS_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_id =? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const-string v5, "display_name DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, v6

    .line 168
    goto :goto_0
.end method

.method static restoreDualMicNoiseSuppressionUsed(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 832
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    const-string v3, "somc_sound_enhance_pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 836
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 838
    .local v0, enableNoiseSuppression:Z
    const-string v3, "dual_mic_noise_suppression_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 839
    .local v2, useNoiseSuppr:Z
    invoke-static {p0, v2}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 841
    .end local v0           #enableNoiseSuppression:Z
    .end local v1           #settings:Landroid/content/SharedPreferences;
    .end local v2           #useNoiseSuppr:Z
    :cond_0
    return-void
.end method

.method static restoreEqualizerUsed()V
    .locals 5

    .prologue
    .line 902
    const-string v1, "voice_personal_eq"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 911
    .local v0, equalizerValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 904
    .end local v0           #equalizerValue:Ljava/lang/String;
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "equalizer_key"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 909
    .restart local v0       #equalizerValue:Ljava/lang/String;
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "voice_personal_eq"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static restoreFarEndNoiseSuppressionUsed(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isFarEndNoiseSuppressionExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    const-string v2, "somc_sound_enhance_pref"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 892
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "far_end_noise_suppression_key"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 893
    .local v1, useNoiseSuppr:Z
    invoke-static {p0, v1}, Lcom/android/phone/SomcPhoneUtils;->setFarEndNoiseSuppression(Landroid/content/Context;Z)V

    .line 895
    .end local v0           #settings:Landroid/content/SharedPreferences;
    .end local v1           #useNoiseSuppr:Z
    :cond_0
    return-void
.end method

.method static restoreSlowTalkUsed()V
    .locals 5

    .prologue
    .line 932
    const-string v1, "st_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 939
    .local v0, slowTalkValue:Z
    :goto_0
    return-void

    .line 934
    .end local v0           #slowTalkValue:Z
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "slow_talk_key"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 937
    .restart local v0       #slowTalkValue:Z
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "st_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static restoreSpeakerVoiceEnhancementUsed()V
    .locals 5

    .prologue
    .line 918
    const-string v1, "wide_voice_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 925
    .local v0, speakerVoiceEnhancementValue:Z
    :goto_0
    return-void

    .line 920
    .end local v0           #speakerVoiceEnhancementValue:Z
    :cond_0
    const-string v1, "somc_sound_enhance_pref"

    const-string v2, "speaker_voice_enhancement_key"

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 923
    .restart local v0       #speakerVoiceEnhancementValue:Z
    const-string v1, "%s=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "wide_voice_enable"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setAudioParameter(Ljava/lang/String;)V
    .locals 3
    .parameter "keyValuePairs"

    .prologue
    .line 662
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 663
    .local v1, context:Landroid/content/Context;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 664
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method static setDualMicNoiseSuppression(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 732
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->storeDualMicNoiseSuppressionSetting(Landroid/content/Context;Z)V

    .line 733
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 734
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 735
    const-string v1, "dualmic_enabled=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    const-string v1, "dualmic_enabled=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEqualizer(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 760
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "equalizer_key"

    invoke-static {v0, v1, p0}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "voice_personal_eq"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method static setFarEndNoiseSuppression(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 746
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 747
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 748
    const-string v1, "fens_enable=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v1, "fens_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setInternatioalCallLock(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLockOn"

    .prologue
    .line 947
    const-string v2, "international_call_lock_setting_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 949
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 950
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "international_call_lock_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 951
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 952
    return-void
.end method

.method static setSlowTalk(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 782
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "slow_talk_key"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "st_enable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method static setSpeakerVoiceEnhancement(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .line 771
    const-string v0, "somc_sound_enhance_pref"

    const-string v1, "speaker_voice_enhancement_key"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    const-string v0, "%s=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "wide_voice_enable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->setAudioParameter(Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method static showCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 1037
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCallEndedInteraction  c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 1038
    :cond_0
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->needShowCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1079
    :goto_0
    return-void

    .line 1039
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1040
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    .line 1041
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCallEndedInteraction  callerInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 1042
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 1045
    invoke-static {p0, v0, v1}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v5

    .line 1046
    iget-object v4, v0, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1047
    iget-object v1, v0, Lcom/android/phone/SomcCallerInfo;->phoneLabel:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/phone/SomcCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 1048
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1049
    if-eqz v6, :cond_5

    move-object v3, v4

    .line 1050
    :goto_2
    if-eqz v6, :cond_6

    const-string v2, ""

    .line 1051
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v7

    .line 1053
    sget-boolean v9, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v9, :cond_3

    .line 1054
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showCallEndedInteraction  Get info: name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " ,number:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " ,phoneLabel:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,nameOrNumber:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,typeAndNumber:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ,durationMillis:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 1059
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/phone/SomcCallEndedInteractionActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1060
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1061
    const-string v9, "nameOrNumber"

    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v3, "typeAndNumber"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v2, "personId"

    iget-wide v9, v0, Lcom/android/phone/SomcCallerInfo;->person_id:J

    invoke-virtual {v5, v2, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1064
    const-string v2, "callDuration"

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    const-string v0, "00:00"

    :goto_4
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "number"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v0, "unknownName"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1069
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1070
    invoke-virtual {v1, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1072
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 1075
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1078
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    goto/16 :goto_0

    .line 1047
    :cond_4
    const-string v1, ""

    goto/16 :goto_1

    :cond_5
    move-object v3, v5

    .line 1049
    goto/16 :goto_2

    .line 1050
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u202a"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u202c"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1064
    :cond_7
    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static silenceRinger()V
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 965
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 967
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 968
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 969
    const-string v1, "silence ringer(trigger by VOLUME key or open reject message list and so on)"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->log(Ljava/lang/String;)V

    .line 971
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 973
    :cond_1
    return-void
.end method

.method static storeDualMicNoiseSuppressionSetting(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 820
    const-string v2, "somc_sound_enhance_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 822
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 823
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "dual_mic_noise_suppression_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 824
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 825
    return-void
.end method

.method static storeFarEndNoiseSuppressionSetting(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 875
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->setFarEndNoiseSuppression(Landroid/content/Context;Z)V

    .line 877
    const-string v2, "somc_sound_enhance_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 879
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 880
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "far_end_noise_suppression_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 881
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    return-void
.end method

.method static storeSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "prefFile"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 702
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 703
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 704
    check-cast p2, Ljava/lang/String;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 709
    return-void

    .line 705
    .restart local p2       #value:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 706
    check-cast p2, Ljava/lang/Boolean;

    .end local p2           #value:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static updateRequestedOrientation(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1143
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1145
    return-void

    .line 1143
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateSpeaker()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1152
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1160
    .local v0, app:Lcom/android/phone/PhoneApp;
    :cond_0
    :goto_0
    return-void

    .line 1153
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1154
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isBluetoothConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1155
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    .line 1156
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1158
    invoke-static {v0, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method
