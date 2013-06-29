.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;
.super Ljava/lang/Object;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "isFocused"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
