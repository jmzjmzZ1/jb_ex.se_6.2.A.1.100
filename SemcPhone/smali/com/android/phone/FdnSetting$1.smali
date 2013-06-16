.class Lcom/android/phone/FdnSetting$1;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const v7, 0x7f0b02a5

    const/4 v6, 0x0

    const v8, 0x7f0b00d5

    .line 242
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 247
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 248
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 250
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 251
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_1

    .line 252
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->showDialog(I)V

    .line 266
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 254
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    .line 255
    .local v2, iccPin2RetryCount:I
    if-lez v2, :cond_2

    .line 256
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v8}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_2
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v7}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;I)V

    goto :goto_1

    .line 275
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #iccPin2RetryCount:I
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 276
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    .line 277
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 278
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v5, :cond_3

    .line 281
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->showDialog(I)V

    .line 330
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :goto_2
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonChangePin2:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    :cond_3
    const/4 v2, -0x1

    .line 284
    .restart local v2       #iccPin2RetryCount:I
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 285
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 286
    .local v3, ints:[I
    if-eqz v3, :cond_4

    .line 287
    aget v2, v3, v6

    .line 291
    .end local v3           #ints:[I
    :cond_4
    const/4 v4, -0x1

    if-ne v4, v2, :cond_5

    .line 292
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v2

    .line 296
    :cond_5
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 297
    if-lez v2, :cond_6

    .line 298
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0b02c0

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v8}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    .line 313
    :goto_3
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 314
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_2

    .line 303
    :cond_6
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;)V

    goto :goto_3

    .line 306
    :cond_7
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v7, 0x7f0b02c1

    invoke-virtual {v6, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v6, v8}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;Ljava/lang/String;)V

    goto :goto_3

    .line 316
    :cond_8
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$600(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_2

    .line 321
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    .end local v2           #iccPin2RetryCount:I
    :cond_9
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0b02c5

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$200(Lcom/android/phone/FdnSetting;I)V

    .line 322
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v4, v6}, Lcom/android/phone/FdnSetting;->access$402(Lcom/android/phone/FdnSetting;Z)Z

    .line 323
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_a

    .line 325
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    const/4 v5, 0x1

    #calls: Lcom/android/phone/FdnSetting;->toggleFDNEnable(Z)V
    invoke-static {v4, v5}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;Z)V

    .line 327
    :cond_a
    iget-object v4, p0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v4}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_2

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method
