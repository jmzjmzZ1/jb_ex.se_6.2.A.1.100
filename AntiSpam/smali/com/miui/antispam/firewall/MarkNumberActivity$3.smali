.class Lcom/miui/antispam/firewall/MarkNumberActivity$3;
.super Ljava/lang/Object;
.source "MarkNumberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/MarkNumberActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/MarkNumberActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$3;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$3;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    #calls: Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
    invoke-static {v0, v1, v2}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    .line 225
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$3;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v0, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$3;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v0, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 228
    :cond_0
    return-void
.end method
