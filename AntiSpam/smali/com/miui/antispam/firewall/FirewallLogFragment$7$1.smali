.class Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;
.super Lcom/miui/antispam/firewall/DeletingDialog;
.source "FirewallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment$7;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    invoke-direct {p0}, Lcom/miui/antispam/firewall/DeletingDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected ok()V
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 449
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v0, v0, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mQueryTarget:I
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$300(Lcom/miui/antispam/firewall/FirewallLogFragment;)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v0, v0, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type=? AND number=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v4, v4, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->val$originalNumber:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v0, v0, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 468
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v0, v0, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 469
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v0, v0, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "(type=? OR type=?) AND number=?"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$7$1;->this$1:Lcom/miui/antispam/firewall/FirewallLogFragment$7;

    iget-object v4, v4, Lcom/miui/antispam/firewall/FirewallLogFragment$7;->val$originalNumber:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
