.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x190

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 168
    sget-boolean v7, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CallForwardEditPreference"

    const-string v8, "handleGetCFResponse: done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v10, :cond_3

    .line 171
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v8, v9}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 176
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 178
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iput-object v12, v7, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 179
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 180
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v9}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 181
    sget-boolean v7, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v7, :cond_1

    const-string v7, "CallForwardEditPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetCFResponse: ar.exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v7, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v8, v9, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 235
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)V

    .line 236
    return-void

    .line 173
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v8, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 185
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_4
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    .line 186
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v8, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    .line 188
    :cond_5
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v7

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 189
    .local v2, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_7

    .line 190
    sget-boolean v7, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v7, :cond_6

    const-string v7, "CallForwardEditPreference"

    const-string v8, "handleGetCFResponse: cfInfoArray.length==0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v9}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 192
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, v7, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v7, v8, v11}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 194
    :cond_7
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v2

    .local v5, length:I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 195
    sget-boolean v7, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v7, :cond_8

    const-string v7, "CallForwardEditPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleGetCFResponse, cfInfoArray["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_8
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v7}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v7

    aget-object v8, v2, v3

    iget v8, v8, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_9

    .line 199
    aget-object v4, v2, v3

    .line 200
    .local v4, info:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7, v4}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 206
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v10, :cond_9

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-nez v7, :cond_9

    iget v7, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v7, v10, :cond_9

    .line 210
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v7, :pswitch_data_0

    .line 218
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b01e9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 220
    .local v6, s:Ljava/lang/CharSequence;
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0b01f3

    invoke-virtual {v1, v7, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b01eb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 194
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #info:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v6           #s:Ljava/lang/CharSequence;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 212
    .restart local v4       #info:Lcom/android/internal/telephony/CallForwardInfo;
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b01df

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 213
    .restart local v6       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 215
    .end local v6           #s:Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v7}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b01e4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 216
    .restart local v6       #s:Ljava/lang/CharSequence;
    goto :goto_3

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 241
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 242
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "CallForwardEditPreference"

    const-string v2, "handleSetCFResponse: re get"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 162
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
