.class final Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showRemoveDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

.field final synthetic val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$emptySlotIndex:I


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/content/Context;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    iput-object p4, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$app:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iput p5, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$emptySlotIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$context:Landroid/content/Context;

    const-string v2, "small_apps_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "show_remove_dialog"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$app:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget v3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$1;->val$emptySlotIndex:I

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->removeApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    .line 114
    return-void
.end method
