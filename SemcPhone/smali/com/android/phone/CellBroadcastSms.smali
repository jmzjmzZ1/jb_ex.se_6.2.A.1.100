.class public Lcom/android/phone/CellBroadcastSms;
.super Landroid/preference/PreferenceActivity;
.source "CellBroadcastSms.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcastSms$1;,
        Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;,
        Lcom/android/phone/CellBroadcastSms$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonAdministrative:Landroid/preference/CheckBoxPreference;

.field private mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

.field private mButtonAtr:Landroid/preference/CheckBoxPreference;

.field private mButtonBcSms:Landroid/preference/CheckBoxPreference;

.field private mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

.field private mButtonEo:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational1:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational2:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational3:Landroid/preference/CheckBoxPreference;

.field private mButtonInternational4:Landroid/preference/CheckBoxPreference;

.field private mButtonLafs:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal1:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal2:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal3:Landroid/preference/CheckBoxPreference;

.field private mButtonLocal4:Landroid/preference/CheckBoxPreference;

.field private mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

.field private mButtonLodgings:Landroid/preference/CheckBoxPreference;

.field private mButtonMaintenance:Landroid/preference/CheckBoxPreference;

.field private mButtonMhh:Landroid/preference/CheckBoxPreference;

.field private mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

.field private mButtonNational1:Landroid/preference/CheckBoxPreference;

.field private mButtonNational2:Landroid/preference/CheckBoxPreference;

.field private mButtonNational3:Landroid/preference/CheckBoxPreference;

.field private mButtonNational4:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional1:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional2:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional3:Landroid/preference/CheckBoxPreference;

.field private mButtonRegional4:Landroid/preference/CheckBoxPreference;

.field private mButtonRestaurants:Landroid/preference/CheckBoxPreference;

.field private mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

.field private mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

.field private mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

.field private mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

.field private mListLanguage:Landroid/preference/ListPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 575
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CellBroadcastSms;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CellBroadcastSms;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms;->setAllCbConfigButtons([I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private enableDisableAllCbConfigButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 473
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 490
    return-void
.end method

.method private setAllCbConfigButtons([I)V
    .locals 4
    .parameter "configArray"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 495
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    aget v0, p1, v1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getConfigDataLanguage()I
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$600()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 498
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x2

    aget v0, p1, v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 499
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x3

    aget v0, p1, v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 500
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x14

    aget v0, p1, v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 501
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x15

    aget v0, p1, v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x16

    aget v0, p1, v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 503
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x17

    aget v0, p1, v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x18

    aget v0, p1, v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 505
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x19

    aget v0, p1, v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1a

    aget v0, p1, v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1b

    aget v0, p1, v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 508
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1c

    aget v0, p1, v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 509
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1d

    aget v0, p1, v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 510
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1e

    aget v0, p1, v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 511
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x1f

    aget v0, p1, v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 513
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x4

    aget v0, p1, v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 514
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x5

    aget v0, p1, v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x6

    aget v0, p1, v0

    if-eqz v0, :cond_11

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 516
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x7

    aget v0, p1, v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_12
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 518
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x8

    aget v0, p1, v0

    if-eqz v0, :cond_13

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 519
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x9

    aget v0, p1, v0

    if-eqz v0, :cond_14

    move v0, v1

    :goto_14
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 520
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xa

    aget v0, p1, v0

    if-eqz v0, :cond_15

    move v0, v1

    :goto_15
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 521
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xb

    aget v0, p1, v0

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 523
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xc

    aget v0, p1, v0

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 524
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xd

    aget v0, p1, v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 525
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xe

    aget v0, p1, v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0xf

    aget v0, p1, v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 528
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x10

    aget v0, p1, v0

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 529
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x11

    aget v0, p1, v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 530
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    const/16 v0, 0x12

    aget v0, p1, v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    const/16 v3, 0x13

    aget v3, p1, v3

    if-eqz v3, :cond_1e

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 532
    return-void

    :cond_0
    move v0, v2

    .line 495
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 498
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 499
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 500
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 501
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 502
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 503
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 504
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 505
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 506
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 507
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 508
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 509
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 510
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 511
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 513
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 514
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 515
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 516
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 518
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 519
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 520
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 521
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 523
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 524
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 525
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 526
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 528
    goto :goto_1b

    :cond_1c
    move v0, v2

    .line 529
    goto :goto_1c

    :cond_1d
    move v0, v2

    .line 530
    goto :goto_1d

    :cond_1e
    move v1, v2

    .line 531
    goto :goto_1e
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcastSms;->addPreferencesFromResource(I)V

    .line 343
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 344
    new-instance v1, Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$1;)V

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    .line 346
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 348
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_enable_disable_cell_bc_sms"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    .line 350
    const-string v1, "list_language"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    .line 353
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    const-string v1, "button_emergency_broadcast"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    .line 356
    const-string v1, "button_administrative"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    .line 358
    const-string v1, "button_maintenance"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    .line 360
    const-string v1, "button_local_weather"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    .line 362
    const-string v1, "button_atr"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    .line 364
    const-string v1, "button_lafs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    .line 366
    const-string v1, "button_restaurants"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    .line 368
    const-string v1, "button_lodgings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    .line 370
    const-string v1, "button_retail_directory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    .line 372
    const-string v1, "button_advertisements"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    .line 374
    const-string v1, "button_stock_quotes"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    .line 376
    const-string v1, "button_eo"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    .line 378
    const-string v1, "button_mhh"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    .line 380
    const-string v1, "button_technology_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    .line 382
    const-string v1, "button_multi_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    .line 385
    const-string v1, "button_local_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    .line 387
    const-string v1, "button_regional_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    .line 389
    const-string v1, "button_national_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    .line 391
    const-string v1, "button_international_general_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    .line 394
    const-string v1, "button_local_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    .line 396
    const-string v1, "button_regional_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    .line 398
    const-string v1, "button_national_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    .line 400
    const-string v1, "button_international_bf_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    .line 403
    const-string v1, "button_local_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    .line 405
    const-string v1, "button_regional_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    .line 407
    const-string v1, "button_national_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    .line 409
    const-string v1, "button_international_sports_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    .line 412
    const-string v1, "button_local_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    .line 414
    const-string v1, "button_regional_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    .line 416
    const-string v1, "button_national_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    .line 418
    const-string v1, "button_international_entertainment_news"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    .line 420
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 445
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 447
    const/16 v0, 0x1f

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsNoOfStructs(I)V
    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$400(I)V

    .line 449
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsAllValues()[I
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$500()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 451
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteLanguage(I)V
    invoke-static {v0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$200(I)V

    .line 335
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 185
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "CellBroadcastSms"

    const-string v3, "onPreferenceTreeClick: preference == mButtonBcSms."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 189
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cdma_cell_broadcast_sms"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 192
    invoke-direct {p0, v1}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    :cond_1
    :goto_0
    move v0, v1

    .line 324
    :goto_1
    return v0

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 196
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cdma_cell_broadcast_sms"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    invoke-direct {p0, v0}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mListLanguage:Landroid/preference/ListPreference;

    if-eq p2, v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 204
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEmergencyBroadcast:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 209
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v3}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 211
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdministrative:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v3}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_0

    .line 212
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 213
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 215
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMaintenance:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v4}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto :goto_0

    .line 216
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 217
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x14

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 219
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocalWeather:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x14

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 221
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x15

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAtr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x15

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 223
    :cond_8
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 224
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x16

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLafs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x16

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x17

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 229
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRestaurants:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x17

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 230
    :cond_a
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x18

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 232
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLodgings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x18

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 233
    :cond_b
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    .line 234
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x19

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRetailDirectory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x19

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 237
    :cond_c
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 238
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1a

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonAdvertisements:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1a

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 241
    :cond_d
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 242
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1b

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 244
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonStockQuotes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1b

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 245
    :cond_e
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 246
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1c

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonEo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1c

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 248
    :cond_f
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 249
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1d

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMhh:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1d

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 251
    :cond_10
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 252
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1e

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 254
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonTechnologyNews:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1e

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 255
    :cond_11
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 256
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1f

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 258
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonMultiCategory:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x1f

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 259
    :cond_12
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 260
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 261
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v5}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 262
    :cond_13
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 263
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x5

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 265
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x5

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 266
    :cond_14
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 267
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x6

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 269
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x6

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 270
    :cond_15
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 271
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x7

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 273
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational1:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x7

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 274
    :cond_16
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_17

    .line 275
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x8

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 276
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x8

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 277
    :cond_17
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_18

    .line 278
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x9

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 280
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x9

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 281
    :cond_18
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_19

    .line 282
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xa

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 284
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xa

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 285
    :cond_19
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1a

    .line 286
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xb

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 288
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xb

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 289
    :cond_1a
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1b

    .line 290
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xc

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 291
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xc

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 292
    :cond_1b
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xd

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xd

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 296
    :cond_1c
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1d

    .line 297
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xe

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xe

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 300
    :cond_1d
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1e

    .line 301
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xf

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational3:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0xf

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 304
    :cond_1e
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1f

    .line 305
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x10

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 306
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonLocal4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x10

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 307
    :cond_1f
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_20

    .line 308
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x11

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 310
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonRegional4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x11

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 311
    :cond_20
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_21

    .line 312
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x12

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 314
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonNational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x12

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 315
    :cond_21
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_22

    .line 316
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x13

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$000(ZI)V

    .line 318
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSms;->mButtonInternational4:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    const/16 v2, 0x13

    #calls: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V
    invoke-static {v0, v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$100(ZI)V

    goto/16 :goto_0

    .line 320
    :cond_22
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 426
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSms;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 428
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "cdma_cell_broadcast_sms"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 432
    .local v0, settingCbSms:I
    iget-object v4, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 434
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-direct {p0, v2}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    .line 440
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 441
    return-void

    :cond_0
    move v1, v3

    .line 432
    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V

    goto :goto_1
.end method
