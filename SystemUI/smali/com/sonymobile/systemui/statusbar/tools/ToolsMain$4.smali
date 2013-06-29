.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBluetooth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->val$service:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 3

    .prologue
    .line 193
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 194
    const/4 v0, 0x2

    .line 198
    .local v0, nextState:I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;->val$service:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->changeTo(I)V

    .line 199
    return-void

    .line 196
    .end local v0           #nextState:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #nextState:I
    goto :goto_0
.end method
