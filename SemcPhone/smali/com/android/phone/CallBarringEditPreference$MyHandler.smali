.class Lcom/android/phone/CallBarringEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallBarringEditPreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallBarringEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallBarringEditPreference;Lcom/android/phone/CallBarringEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringEditPreference$MyHandler;-><init>(Lcom/android/phone/CallBarringEditPreference;)V

    return-void
.end method

.method private handleGetCallBarringResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x190

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 247
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    .line 248
    const-string v2, "CallBarringEditPreference"

    const-string v5, "handleGetCallBarringResponse: done"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_3

    .line 252
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-interface {v2, v5, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 258
    :goto_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 259
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    .line 260
    const-string v2, "CallBarringEditPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCallBarringResponse: ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v3, v2, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 282
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2}, Lcom/android/phone/CallBarringEditPreference;->updateSummaryText()V

    .line 283
    return-void

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-interface {v2, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 264
    :cond_4
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 265
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-interface {v2, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 267
    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 268
    .local v1, ints:[I
    array-length v2, v1

    if-nez v2, :cond_7

    .line 269
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_6

    .line 270
    const-string v2, "CallBarringEditPreference"

    const-string v3, "handleGetCallBarringResponse: ar.result.length==0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/CallBarringEditPreference;->setEnabled(Z)V

    .line 272
    iget-object v2, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v2, v2, Lcom/android/phone/CallBarringEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    invoke-interface {v2, v3, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 274
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    aget v2, v1, v4

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/android/phone/CallBarringEditPreference;->handleCallBarringResult(Z)V

    .line 275
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    .line 276
    const-string v2, "CallBarringEditPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCallBarringResponse: CB state successfully queried: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    move v2, v4

    .line 274
    goto :goto_2
.end method

.method private handleSetCallBarringResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 289
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "CallBarringEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCallBarringResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    .line 295
    const-string v1, "CallBarringEditPreference"

    const-string v2, "handleSetCallBarringResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallBarringEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/CallBarringEditPreference;->access$100()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallBarringEditPreference$MyHandler;->this$0:Lcom/android/phone/CallBarringEditPreference;

    iget v3, v3, Lcom/android/phone/CallBarringEditPreference;->facilityId:I

    aget-object v2, v2, v3

    const-string v3, ""

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v6, v4, v5}, Lcom/android/phone/CallBarringEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v2, v3, v6, v4}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 302
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringEditPreference$MyHandler;->handleGetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringEditPreference$MyHandler;->handleSetCallBarringResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
