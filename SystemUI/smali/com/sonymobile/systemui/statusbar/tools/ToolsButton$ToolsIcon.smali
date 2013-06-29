.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
.super Ljava/lang/Object;
.source "ToolsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsIcon"
.end annotation


# instance fields
.field public final colorize:Z

.field public final id:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "id"
    .parameter "colorize"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    .line 36
    iput-boolean p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    .line 37
    return-void
.end method
