.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->populateWithSmallApps()V
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
    .line 271
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$3;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$300(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->scrollTo(II)V

    .line 274
    return-void
.end method
