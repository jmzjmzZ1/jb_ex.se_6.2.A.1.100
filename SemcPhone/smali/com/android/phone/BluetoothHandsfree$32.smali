.class Lcom/android/phone/BluetoothHandsfree$32;
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
    .line 2923
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2926
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BT HS/HF"

    const-string v1, "Receiving AT+BCC from HF, sending OK to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    :cond_0
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "OK"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2928
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteCodec:I
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$3702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2929
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mLocalBrsf:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4

    .line 2930
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mExpectingBCS:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$4102(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 2931
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mRemoteAvailableCodecs:I
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2932
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v0, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2933
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BT HS/HF"

    const-string v1, "Sending +BCS:2 to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+BCS:2"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 2940
    :goto_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2943
    :goto_1
    return-object v0

    .line 2936
    :cond_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mLocalCodec:I
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3902(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 2937
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "BT HS/HF"

    const-string v1, "Sending +BCS:1 to HF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :cond_3
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$32;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v1, "+BCS:1"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$1600(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto :goto_0

    .line 2942
    :cond_4
    const-string v0, "BT HS/HF"

    const-string v1, "ERROR no codec negotiation enabled AG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1
.end method
