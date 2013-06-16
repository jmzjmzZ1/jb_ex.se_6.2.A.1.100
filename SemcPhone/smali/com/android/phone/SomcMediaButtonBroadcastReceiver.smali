.class public Lcom/android/phone/SomcMediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SomcMediaButtonBroadcastReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlingShortPress:Z

.field private mLongPressDetected:Z

.field private shortPressTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    .line 41
    iput-boolean v1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    .line 47
    new-instance v0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver$1;-><init>(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/SomcMediaButtonBroadcastReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    return p1
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 217
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public handleHeadsetHook(Landroid/view/KeyEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 100
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleHeadsetHook()..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 104
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_0

    move v3, v5

    .line 105
    .local v3, hasRingingCall:Z
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 106
    .local v1, hasActiveCall:Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 107
    .local v2, hasHoldingCall:Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 108
    .local v4, phoneState:Lcom/android/internal/telephony/Phone$State;
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasRingingCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasActiveCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasHoldingCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phoneState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v7, :cond_3

    .line 182
    :goto_3
    return v6

    .end local v1           #hasActiveCall:Z
    .end local v2           #hasHoldingCall:Z
    .end local v3           #hasRingingCall:Z
    .end local v4           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_0
    move v3, v6

    .line 104
    goto :goto_0

    .restart local v3       #hasRingingCall:Z
    :cond_1
    move v1, v6

    .line 105
    goto :goto_1

    .restart local v1       #hasActiveCall:Z
    :cond_2
    move v2, v6

    .line 106
    goto :goto_2

    .line 130
    .restart local v2       #hasHoldingCall:Z
    .restart local v4       #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    .line 133
    iput-boolean v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    :cond_4
    :goto_4
    move v6, v5

    .line 182
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-ne v7, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_6

    .line 137
    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "handleHeadsetHook: longpress -> hangup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput-boolean v5, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    .line 139
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 140
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    goto :goto_4

    .line 142
    :cond_6
    iget-boolean v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mLongPressDetected:Z

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 147
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v8, "handleHeadsetHook: short press"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    if-eqz v7, :cond_8

    .line 152
    const-string v7, "SomcMediaButtonBroadcastReceiver"

    const-string v8, "handleHeadsetHook: double press"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-boolean v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    .line 155
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 157
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_7

    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "switch calls"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 159
    invoke-direct {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->updateUi()V

    goto :goto_4

    .line 163
    :cond_8
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_9

    const-string v6, "SomcMediaButtonBroadcastReceiver"

    const-string v7, "post short press task"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_9
    iget-object v6, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->shortPressTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iput-boolean v5, p0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->mHandlingShortPress:Z

    goto :goto_4
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 188
    .local v2, event:Landroid/view/KeyEvent;
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaButtonBroadcastReceiver.onReceive()...  event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_4

    .line 192
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_1

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    const-string v4, "MediaButtonBroadcastReceiver: HEADSETHOOK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->handleHeadsetHook(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 194
    .local v1, consumed:Z
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> handleHeadsetHook(): consumed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    if-eqz v1, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 209
    .end local v1           #consumed:Z
    :cond_3
    :goto_0
    return-void

    .line 199
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 200
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_3

    .line 205
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_5

    const-string v3, "SomcMediaButtonBroadcastReceiver"

    const-string v4, "MediaButtonBroadcastReceiver: consumed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_0
.end method
