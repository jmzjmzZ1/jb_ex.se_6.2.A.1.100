.class final Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;
.super Ljava/lang/Object;
.source "SmallAppDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs;->showAddDialog(Landroid/view/View;Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, FROM_SMALL_APPS:I
    const/4 v0, 0x1

    .line 238
    .local v0, FROM_MARKET:I
    packed-switch p2, :pswitch_data_0

    .line 246
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 240
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    invoke-interface {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->addAppFromInstalledSmallApps()V

    .line 248
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    return-void

    .line 243
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppDialogs$5;->val$callback:Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;

    invoke-interface {v2}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppCallback;->addAppFromMarket()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
