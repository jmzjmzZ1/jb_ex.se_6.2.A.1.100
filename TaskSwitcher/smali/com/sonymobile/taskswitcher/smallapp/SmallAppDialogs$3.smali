.class final Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$emptySlotIndex:I


# direct methods
.method constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    iput-object p2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$app:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iput p3, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$emptySlotIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    iget-object v1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$app:Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;

    iget v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$3;->val$emptySlotIndex:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->moveApp(Lcom/sonymobile/taskswitcher/smallapp/SmallAppItem;I)V

    .line 133
    return-void
.end method
