.class Lcom/android/phone/BluetoothHandsfree$35;
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
    .line 3041
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 8
    .parameter "args"

    .prologue
    const/4 v2, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3047
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BT HS/HF"

    const-string v4, "Receiving AT+BIA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_0
    array-length v3, p1

    if-le v3, v2, :cond_3

    .line 3049
    .local v2, size:I
    :goto_0
    const/4 v0, 0x0

    .local v0, ai:I
    const/4 v1, 0x1

    .local v1, ii:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 3050
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BT HS/HF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    :cond_1
    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 3052
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 3053
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v3

    aput-boolean v7, v3, v1

    .line 3049
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3048
    .end local v0           #ai:I
    .end local v1           #ii:I
    .end local v2           #size:I
    :cond_3
    array-length v2, p1

    goto :goto_0

    .line 3054
    .restart local v0       #ai:I
    .restart local v1       #ii:I
    .restart local v2       #size:I
    :cond_4
    aget-object v3, p1, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    .line 3055
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$35;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIIEnabled:[Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$4300(Lcom/android/phone/BluetoothHandsfree;)[Z

    move-result-object v3

    aput-boolean v6, v3, v1

    goto :goto_2

    .line 3059
    :cond_5
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v3
.end method
