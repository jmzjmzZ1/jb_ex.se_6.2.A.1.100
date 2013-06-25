.class Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$1;
.super Ljava/lang/Object;
.source "SmallAppScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->onSizeChanged(IIII)V
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
    .line 181
    iput-object p1, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$1;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView$1;->this$0:Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;

    invoke-virtual {v0}, Lcom/sonymobile/taskswitcher/smallapp/SmallAppScrollView;->populateWithSmallApps()V

    .line 184
    return-void
.end method
