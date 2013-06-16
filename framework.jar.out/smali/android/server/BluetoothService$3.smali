.class Landroid/server/BluetoothService$3;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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
    .line 2032
    iput-object p1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2034
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2035
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2036
    .restart local p2
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2037
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2038
    .restart local p2
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2039
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 2043
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2044
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHeadsetProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2045
    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    const/4 v2, 0x0

    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Landroid/server/BluetoothService;->access$902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2046
    monitor-exit v1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2046
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2047
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2048
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2049
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2050
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1102(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method
