.class Lcom/android/phone/GsmUmtsCallBarringOptions$1;
.super Landroid/os/Handler;
.source "GsmUmtsCallBarringOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GsmUmtsCallBarringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsCallBarringOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 196
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onFinished(Landroid/preference/Preference;Z)V

    .line 197
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 200
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 201
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 202
    const-string v1, "GsmUmtsCallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change password for call barring failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 206
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 213
    :goto_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #calls: Lcom/android/phone/GsmUmtsCallBarringOptions;->resetPwChangeState()V
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$200(Lcom/android/phone/GsmUmtsCallBarringOptions;)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonChangePW:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$000(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    const v2, 0x7f0b00f4

    #calls: Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V

    goto :goto_1

    .line 220
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onFinished(Landroid/preference/Preference;Z)V

    .line 221
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 222
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 223
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    .line 224
    const-string v1, "GsmUmtsCallBarringOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not disable all call barring with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v1}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 228
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #getter for: Lcom/android/phone/GsmUmtsCallBarringOptions;->mButtonDeaAll:Lcom/android/phone/EditPinPreference;
    invoke-static {v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$300(Lcom/android/phone/GsmUmtsCallBarringOptions;)Lcom/android/phone/EditPinPreference;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/phone/GsmUmtsCallBarringOptions;->onError(Landroid/preference/Preference;I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    const v2, 0x7f0b00ec

    #calls: Lcom/android/phone/GsmUmtsCallBarringOptions;->displayMessage(I)V
    invoke-static {v1, v2}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$100(Lcom/android/phone/GsmUmtsCallBarringOptions;I)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/GsmUmtsCallBarringOptions$1;->this$0:Lcom/android/phone/GsmUmtsCallBarringOptions;

    #calls: Lcom/android/phone/GsmUmtsCallBarringOptions;->resetCallBarringPrefState(Z)V
    invoke-static {v1, v3}, Lcom/android/phone/GsmUmtsCallBarringOptions;->access$400(Lcom/android/phone/GsmUmtsCallBarringOptions;Z)V

    goto/16 :goto_0

    .line 191
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
