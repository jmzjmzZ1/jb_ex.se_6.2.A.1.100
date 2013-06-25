.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->addApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;


# direct methods
.method constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 692
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-virtual {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->getPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 693
    .local v0, width:I
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->shouldMirror()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$300(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I
    invoke-static {v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$400(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)I

    move-result v3

    div-int v3, v0, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->scrollTo(II)V

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$4;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsPerPage:I
    invoke-static {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$400(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)I

    move-result v2

    div-int v2, v0, v2

    invoke-virtual {v1, v2, v4}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->scrollTo(II)V

    goto :goto_0
.end method
