.class final Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;
.super Ljava/lang/Object;
.source "ToolsMain.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToolsServiceListenerImpl"
.end annotation


# instance fields
.field final mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 250
    return-void
.end method


# virtual methods
.method public onChangingTo(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->startAnimate(I)V

    .line 266
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 261
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 255
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 256
    return-void
.end method
