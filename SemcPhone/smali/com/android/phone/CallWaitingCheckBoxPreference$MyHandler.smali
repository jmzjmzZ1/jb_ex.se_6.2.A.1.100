.class Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingCheckBoxPreference;Lcom/android/phone/CallWaitingCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingCheckBoxPreference;)V

    return-void
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 84
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_0

    .line 85
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_3

    .line 86
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v2, v5, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 92
    :cond_0
    :goto_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 93
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "CallWaitingCheckBoxPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v3, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 114
    :cond_2
    :goto_1
    return-void

    .line 88
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-interface {v2, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 101
    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v2, v2, Lcom/android/phone/CallWaitingCheckBoxPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const/16 v4, 0x190

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 103
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_6

    const-string v2, "CallWaitingCheckBoxPreference"

    const-string v5, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_6
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 108
    .local v1, cwArray:[I
    array-length v2, v1

    const/4 v5, 0x2

    if-lt v2, v5, :cond_8

    .line 109
    iget-object v5, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    aget v2, v1, v4

    if-ne v2, v3, :cond_7

    aget v2, v1, v3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2

    .line 111
    :cond_8
    const-string v2, "CallWaitingCheckBoxPreference"

    const-string v3, "ar.result length < 2, call waiting setChecked failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 119
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 120
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallWaitingCheckBoxPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "CallWaitingCheckBoxPreference"

    const-string v2, "handleSetCallWaitingResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CallWaitingCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingCheckBoxPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
