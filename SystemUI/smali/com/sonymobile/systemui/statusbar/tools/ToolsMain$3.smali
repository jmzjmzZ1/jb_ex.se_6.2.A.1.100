.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDataTraffic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;->val$service:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .locals 3

    .prologue
    .line 165
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 166
    const/4 v0, 0x2

    .line 168
    .local v0, nextState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$100(Landroid/content/Context;)V

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;->val$service:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->changeTo(I)V

    .line 173
    return-void

    .line 170
    .end local v0           #nextState:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #nextState:I
    goto :goto_0
.end method
