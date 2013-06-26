.class Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;
.super Ljava/lang/Object;
.source "MarkNumberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/MarkNumberActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

.field final synthetic val$category:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/MarkNumberActivity$1;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iput-object p2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->val$category:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->val$category:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/dataupdate/AntiSpam$Category;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    .line 185
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 186
    const-string v5, "_id"

    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/dataupdate/AntiSpam$Category;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 190
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    .line 191
    .local v0, id:J
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 192
    const-string v5, "cat_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v5, "cat_title"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v5, "source"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v5, "pushed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z
    invoke-static {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$100(Lcom/miui/antispam/firewall/MarkNumberActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 197
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    const/4 v6, 0x1

    #calls: Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
    invoke-static {v5, v6, v4}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    .line 203
    .end local v0           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 206
    :cond_2
    return-void

    .line 199
    .restart local v0       #id:J
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_3
    const-string v5, "number"

    iget-object v6, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v6, v6, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$300(Lcom/miui/antispam/firewall/MarkNumberActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;->this$1:Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #calls: Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
    invoke-static {v5, v7, v4}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    goto :goto_0
.end method
