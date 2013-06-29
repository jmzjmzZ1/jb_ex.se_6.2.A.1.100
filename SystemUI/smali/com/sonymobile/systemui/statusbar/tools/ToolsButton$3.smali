.class Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;
.super Ljava/lang/Object;
.source "ToolsButton.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 184
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$202(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$202(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I

    .line 203
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$208(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    goto :goto_1

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    iget-object v3, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I
    invoke-static {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    iget-boolean v0, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->colorize:Z

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    invoke-static {v1, v2, v3, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 211
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
