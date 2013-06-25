.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2$1;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;


# direct methods
.method constructor <init>(Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2$1;->this$1:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2$1;->this$1:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;

    iget-object v0, v0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$2;->val$addAppView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 251
    return-void
.end method
