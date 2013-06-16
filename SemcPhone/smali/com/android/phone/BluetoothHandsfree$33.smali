.class Lcom/android/phone/BluetoothHandsfree$33;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 2949
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 9
    .parameter "args"

    .prologue
    const-wide/16 v7, 0x64

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2953
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BT HS/HF"

    const-string v2, "Receiving AT+BCS=<u> from HF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2955
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2956
    array-length v1, p1

    if-ne v1, v5, :cond_4

    aget-object v1, p1, v4

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 2957
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    const-string v2, "BT HS/HF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HF=>AG AT+BCS="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v2, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2959
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2960
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2970
    :goto_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "BT HS/HF"

    const-string v2, "Sending OK to HF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v1, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2972
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2973
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2974
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2987
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return-object v1

    .line 2962
    :pswitch_0
    const-string v1, "BT HS/HF"

    const-string v2, "HEADSET_SAMPLERATE=16000"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=16000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2966
    :pswitch_1
    const-string v1, "BT HS/HF"

    const-string v2, "HEADSET_SAMPLERATE=8000"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=8000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2977
    :cond_3
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v1, v4}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2978
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v5}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2981
    :cond_4
    const-string v1, "BT HS/HF"

    const-string v2, "HF sent incorrect codec ID, assuming CVSD"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    const-string v1, "BT HS/HF"

    const-string v2, "HEADSET_SAMPLERATE=8000"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "bt_samplerate=8000"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2984
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingScoForWbs:Z
    invoke-static {v1, v5}, Lcom/android/phone/BluetoothHandsfree;->access$4002(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2985
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2986
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$33;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2987
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 2960
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
