.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 562
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 565
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 566
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    .end local v0           #address:Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 572
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 573
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/server/BluetoothBondState;->getAttempt(Ljava/lang/String;)I

    move-result v1

    .line 579
    .local v1, attempt:I
    if-lez v1, :cond_1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 580
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/server/BluetoothBondState;->attempt(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 584
    :cond_1
    if-lez v1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBondState:Landroid/server/BluetoothBondState;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Landroid/server/BluetoothBondState;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/server/BluetoothBondState;->clearPinAttempts(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #attempt:I
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 588
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    #calls: Landroid/server/BluetoothService;->checkAndRemoveRecord(II)V
    invoke-static {v4, v5, v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;II)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
