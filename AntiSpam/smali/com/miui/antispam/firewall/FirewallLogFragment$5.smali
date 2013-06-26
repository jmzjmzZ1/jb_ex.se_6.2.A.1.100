.class Lcom/miui/antispam/firewall/FirewallLogFragment$5;
.super Ljava/lang/Object;
.source "FirewallLogFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/FirewallLogFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$cursorId:Ljava/lang/Long;

.field final synthetic val$date:J

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLogFragment;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    iput-object p2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$body:Ljava/lang/String;

    iput-wide p4, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$date:J

    iput-object p6, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursorId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$number:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$body:Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$date:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    .line 411
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->val$cursorId:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #getter for: Lcom/miui/antispam/firewall/FirewallLogFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$000(Lcom/miui/antispam/firewall/FirewallLogFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->startQuery()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$100(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 416
    iget-object v0, p0, Lcom/miui/antispam/firewall/FirewallLogFragment$5;->this$0:Lcom/miui/antispam/firewall/FirewallLogFragment;

    #calls: Lcom/miui/antispam/firewall/FirewallLogFragment;->updateState()V
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLogFragment;->access$200(Lcom/miui/antispam/firewall/FirewallLogFragment;)V

    .line 417
    return v5
.end method
