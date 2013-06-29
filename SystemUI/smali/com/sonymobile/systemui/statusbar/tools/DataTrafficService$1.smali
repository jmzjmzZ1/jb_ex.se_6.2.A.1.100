.class Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;
.super Landroid/content/BroadcastReceiver;
.source "DataTrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mPollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    const/4 v1, 0x0

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mNumberOfPollTries:I
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$202(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;I)I

    .line 62
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->mPollRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
