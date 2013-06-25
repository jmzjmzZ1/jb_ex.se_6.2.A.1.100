.class final Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showAddFromListDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Landroid/widget/BaseAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Landroid/widget/BaseAdapter;

.field final synthetic val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

.field final synthetic val$d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/widget/BaseAdapter;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$adapter:Landroid/widget/BaseAdapter;

    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    iput-object p3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    .line 285
    .local v0, appItem:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;->isInUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    invoke-interface {v1, v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->addApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;)V

    .line 287
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$6;->val$d:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 289
    :cond_0
    return-void
.end method
