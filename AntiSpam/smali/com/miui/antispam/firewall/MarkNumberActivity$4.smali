.class Lcom/miui/antispam/firewall/MarkNumberActivity$4;
.super Ljava/lang/Object;
.source "MarkNumberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 232
    iput-object p1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$4;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$4;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->finish()V

    .line 236
    return-void
.end method
