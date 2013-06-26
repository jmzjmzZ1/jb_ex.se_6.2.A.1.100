.class Lcom/miui/antispam/firewall/MarkNumberActivity$5;
.super Ljava/lang/Thread;
.source "MarkNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

.field final synthetic val$operation:I

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iput p2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$operation:I

    iput-object p3, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$operation:I

    packed-switch v0, :pswitch_data_0

    .line 307
    const-string v0, "MarkNumberActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 296
    const-string v0, "MarkNumberActivity"

    const-string v1, "insert a new markednumber."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$300(Lcom/miui/antispam/firewall/MarkNumberActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    const-string v0, "MarkNumberActivity"

    const-string v1, "update a markednumber."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$300(Lcom/miui/antispam/firewall/MarkNumberActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    const-string v0, "MarkNumberActivity"

    const-string v1, "delete a markednumber."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
