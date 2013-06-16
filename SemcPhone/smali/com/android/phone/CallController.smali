.class public Lcom/android/phone/CallController;
.super Landroid/os/Handler;
.source "CallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallController$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/CallController;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallController constructor: app = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    .line 124
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 125
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .parameter "state"

    .prologue
    .line 593
    packed-switch p1, :pswitch_data_0

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :pswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 620
    :goto_0
    return-object v0

    .line 600
    :pswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 611
    :pswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 616
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 618
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 620
    :cond_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 641
    sget-boolean v1, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOutgoingCallError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 650
    .local v0, inCallUiState:Lcom/android/phone/InCallUiState;
    sget-object v1, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 727
    :pswitch_0
    const-string v1, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOutgoingCallError: unexpected status code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 732
    :cond_1
    :goto_0
    return-void

    .line 654
    :pswitch_1
    const-string v1, "CallController"

    const-string v2, "handleOutgoingCallError: SUCCESS isn\'t an error"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :pswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 677
    :pswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 684
    :pswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 689
    :pswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 696
    :pswitch_6
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 712
    :pswitch_7
    iget-object v1, p0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const v2, 0x7f0b02f4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 723
    :pswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static init(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CallController;
    .locals 4
    .parameter

    .prologue
    .line 107
    const-class v1, Lcom/android/phone/CallController;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/phone/CallController;

    invoke-direct {v0, p0}, Lcom/android/phone/CallController;-><init>(Lcom/android/phone/PhoneApp;)V

    sput-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    .line 113
    :goto_0
    sget-object v0, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    monitor-exit v1

    return-object v0

    .line 111
    :cond_0
    const-string v0, "CallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallController;->sInstance:Lcom/android/phone/CallController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 739
    const-string v0, "CallController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void
.end method

.method private placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 20
    .parameter "intent"

    .prologue
    .line 320
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCallInternal()...  intent = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 325
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v12, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 327
    .local v12, inCallUiState:Lcom/android/phone/InCallUiState;
    const/4 v3, 0x0

    .line 331
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v16

    .line 342
    .local v16, okToCallStatus:Lcom/android/phone/Constants$CallStatusCode;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/phone/PhoneUtils;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 352
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 353
    .local v17, scheme:Ljava/lang/String;
    :goto_0
    const-string v2, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 355
    .local v18, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v2, v0, v4, v1}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 359
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/phone/CallController;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/Constants$CallStatusCode;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 375
    if-nez v4, :cond_5

    .line 376
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    .line 577
    .end local v4           #number:Ljava/lang/String;
    .end local v17           #scheme:Ljava/lang/String;
    .end local v18           #sipPhoneUri:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :goto_1
    return-object v2

    .line 352
    .restart local v4       #number:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 362
    .end local v4           #number:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 367
    .local v9, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_3

    .line 368
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Voicemail number not reachable in current SIM card state."

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v2, v16

    .line 369
    goto :goto_1

    .line 371
    :cond_3
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 372
    :cond_4
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 385
    .end local v9           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v17       #scheme:Ljava/lang/String;
    .restart local v18       #sipPhoneUri:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_5
    invoke-static {v4}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, filteredNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v11, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v14

    .line 387
    .local v14, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v11, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v15

    .line 389
    .local v15, isPotentialEmergencyNumber:Z
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 391
    .local v13, isEmergencyIntent:Z
    if-eqz v15, :cond_6

    if-nez v13, :cond_6

    .line 392
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attempted to call potential emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 396
    :cond_6
    if-nez v15, :cond_7

    if-eqz v13, :cond_7

    .line 397
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with non-potential-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- failing call."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 412
    :cond_7
    if-eqz v14, :cond_a

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_8

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 415
    :cond_8
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 416
    :cond_9
    sget-object v16, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    .line 417
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 420
    :cond_a
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v16

    if-eq v0, v2, :cond_e

    .line 423
    if-eqz v14, :cond_c

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_c

    .line 424
    const-string v2, "CallController"

    const-string v6, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    monitor-enter p0

    .line 428
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    if-nez v2, :cond_b

    .line 429
    new-instance v2, Lcom/android/phone/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/EmergencyCallHelper;-><init>(Lcom/android/phone/CallController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    .line 431
    :cond_b
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mEmergencyCallHelper:Lcom/android/phone/EmergencyCallHelper;

    invoke-virtual {v2, v4}, Lcom/android/phone/EmergencyCallHelper;->startEmergencyCallFromAirplaneModeSequence(Ljava/lang/String;)V

    .line 443
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 431
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 447
    :cond_c
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> placeCallInternal(): non-success status: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v2, v16

    .line 448
    goto/16 :goto_1

    .line 456
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/phone/InCallUiState;->needToShowCallLostDialog:Z

    .line 457
    invoke-virtual {v12}, Lcom/android/phone/InCallUiState;->clearProgressIndication()V

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 469
    .local v5, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    if-nez v14, :cond_f

    if-eqz v13, :cond_10

    :cond_f
    const/4 v6, 0x1

    :goto_2
    iget-object v7, v12, Lcom/android/phone/InCallUiState;->providerGatewayUri:Landroid/net/Uri;

    invoke-static/range {v2 .. v7}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    move-result v8

    .line 476
    .local v8, callStatus:I
    packed-switch v8, :pswitch_data_0

    .line 575
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: unknown callStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 469
    .end local v8           #callStatus:I
    :cond_10
    const/4 v6, 0x0

    goto :goto_2

    .line 497
    .restart local v8       #callStatus:I
    :pswitch_0
    const/4 v2, 0x0

    iput-boolean v2, v12, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 509
    const/4 v2, 0x0

    iput-object v2, v12, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    .line 516
    const/4 v10, 0x0

    .line 517
    .local v10, exitedEcm:Z
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v14, :cond_11

    .line 518
    const-string v2, "CallController"

    const-string v6, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v10, 0x1

    .line 522
    :cond_11
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_12

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v6, :cond_12

    .line 527
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 542
    const/4 v2, 0x1

    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/phone/CallController;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    :cond_12
    if-eqz v10, :cond_13

    .line 549
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 551
    :cond_13
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 555
    .end local v10           #exitedEcm:Z
    :pswitch_1
    sget-boolean v2, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 565
    :cond_14
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 568
    :pswitch_2
    const-string v2, "CallController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 130
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    const-string v0, "CallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: unexpected code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "THREEWAY_CALLERINFO_DISPLAY_DONE..."

    invoke-static {v0}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v0

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public placeCall(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "placeCall()...  intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 191
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v6, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 197
    .local v1, inCallUiState:Lcom/android/phone/InCallUiState;
    if-nez p1, :cond_0

    .line 198
    const-string v6, "CallController"

    const-string v7, "placeCall: called with null intent"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: called with null intent"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 204
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_1

    .line 205
    const-string v6, "CallController"

    const-string v7, "placeCall: intent had no data"

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "placeCall: intent had no data"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, scheme:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, number:Ljava/lang/String;
    const-string v6, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 224
    const-string v6, "CallController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: unexpected intent action "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 236
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 241
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    invoke-virtual {v1, p1}, Lcom/android/phone/InCallUiState;->setProviderOverlayInfo(Landroid/content/Intent;)V

    .line 247
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallController;->placeCallInternal(Landroid/content/Intent;)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v4

    .line 249
    .local v4, status:Lcom/android/phone/Constants$CallStatusCode;
    sget-object v6, Lcom/android/phone/CallController$1;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {v4}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): failure code from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, v4}, Lcom/android/phone/CallController;->handleOutgoingCallError(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 303
    :goto_1
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->displayCallScreen()V

    .line 304
    return-void

    .line 244
    .end local v4           #status:Lcom/android/phone/Constants$CallStatusCode;
    :cond_3
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearProviderOverlayInfo()V

    goto :goto_0

    .line 253
    .restart local v4       #status:Lcom/android/phone/Constants$CallStatusCode;
    :pswitch_0
    sget-boolean v6, Lcom/android/phone/CallController;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==> placeCall(): success from placeCallInternal(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallController;->log(Ljava/lang/String;)V

    .line 255
    :cond_4
    sget-object v6, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    if-ne v4, v6, :cond_5

    .line 258
    sget-object v6, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v1, v6}, Lcom/android/phone/InCallUiState;->setPendingCallStatusCode(Lcom/android/phone/Constants$CallStatusCode;)V

    .line 268
    :goto_2
    iget-object v6, p0, Lcom/android/phone/CallController;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_1

    .line 263
    :cond_5
    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    goto :goto_2

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
