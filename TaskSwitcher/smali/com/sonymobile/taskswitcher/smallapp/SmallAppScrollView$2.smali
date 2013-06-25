.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$addAppView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->val$addAppView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mSmallAppsList:Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;
    invoke-static {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$100(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    #getter for: Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->mMaxSmallAppsInList:I
    invoke-static {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->access$200(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 238
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-static {v1, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showAddDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)Landroid/app/Dialog;

    move-result-object v0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->val$addAppView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 247
    new-instance v1, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2$1;-><init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 254
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-static {v1}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showMaxAppsDialog(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method
