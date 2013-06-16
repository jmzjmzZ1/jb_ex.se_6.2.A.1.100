.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 145
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 291
    :pswitch_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 147
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 148
    .local v14, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 151
    monitor-enter v14

    .line 152
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v14

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 157
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 158
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 160
    .local v9, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 164
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 165
    .local v10, ar:Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 166
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 173
    :goto_1
    monitor-enter v14

    .line 174
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v14

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 170
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 179
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 183
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 187
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 188
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v12, 0x0

    .line 189
    .local v12, hungUp:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    .line 190
    .local v13, phoneType:I
    const/4 v1, 0x2

    if-ne v13, v1, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v12

    .line 200
    :goto_2
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_END_CALL: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v12, :cond_4

    const-string v1, "hung up!"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 203
    monitor-enter v14

    .line 204
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 205
    monitor-exit v14

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 194
    :cond_2
    const/4 v1, 0x1

    if-ne v13, v1, :cond_3

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v12

    goto :goto_2

    .line 198
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_4
    const-string v1, "no call to hang up"

    goto :goto_3

    .line 209
    .end local v12           #hungUp:Z
    .end local v13           #phoneType:I
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 210
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v1, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 211
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1, v9}, Lcom/android/internal/telephony/Phone;->setTransmitPower(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 215
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_8
    const/4 v15, 0x0

    .line 216
    .local v15, retStatus:Z
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 217
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 219
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 220
    const/4 v15, 0x1

    .line 222
    :cond_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 225
    monitor-enter v14

    .line 226
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 227
    monitor-exit v14

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 231
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v15           #retStatus:Z
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 232
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v11, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    .line 233
    .local v11, arg:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    const/16 v1, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 234
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    iget v3, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->ins:I

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    iget v5, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    iget v6, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    iget v7, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    iget-object v8, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 239
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v11           #arg:Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 240
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 241
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 242
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 246
    :goto_4
    monitor-enter v14

    .line 247
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit v14

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 244
    :cond_6
    new-instance v2, Lcom/android/internal/telephony/uicc/IccIoResult;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, [B

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    iput-object v2, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_4

    .line 252
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 253
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v1, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 254
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v9}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 258
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 259
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 260
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 265
    :goto_5
    monitor-enter v14

    .line 266
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v14

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 263
    :cond_7
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_5

    .line 271
    .end local v10           #ar:Landroid/os/AsyncResult;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 272
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v1, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 273
    .restart local v9       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v1, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1, v9}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 278
    .end local v9           #onCompleted:Landroid/os/Message;
    .end local v14           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 279
    .restart local v10       #ar:Landroid/os/AsyncResult;
    iget-object v14, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 280
    .restart local v14       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v1, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 281
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 285
    :goto_6
    monitor-enter v14

    .line 286
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit v14

    goto/16 :goto_0

    :catchall_6
    move-exception v1

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v1

    .line 283
    :cond_8
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v14, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_6

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method
