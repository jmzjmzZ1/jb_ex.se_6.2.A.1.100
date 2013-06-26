.class Lcom/miui/antispam/firewall/MarkNumberActivity$1;
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

.field final synthetic val$matrixCursor:Landroid/database/MatrixCursor;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/MarkNumberActivity;Landroid/database/MatrixCursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iput-object p2, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mCategoryCount:I
    invoke-static {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$000(Lcom/miui/antispam/firewall/MarkNumberActivity;)I

    move-result v5

    if-ge p2, v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, p2}, Landroid/database/MatrixCursor;->moveToPosition(I)Z

    .line 149
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v8}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, catTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->val$matrixCursor:Landroid/database/MatrixCursor;

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v0

    .line 151
    .local v0, catId:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "cat_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v5, "cat_title"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "source"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v5, "pushed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z
    invoke-static {v5}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$100(Lcom/miui/antispam/firewall/MarkNumberActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #calls: Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
    invoke-static {v5, v8, v4}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    .line 162
    :goto_0
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    iget-object v5, v5, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    .end local v0           #catId:I
    .end local v1           #catTitle:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 159
    .restart local v0       #catId:I
    .restart local v1       #catTitle:Ljava/lang/String;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_1
    const-string v5, "number"

    iget-object v6, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #getter for: Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$300(Lcom/miui/antispam/firewall/MarkNumberActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    #calls: Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V
    invoke-static {v5, v7, v4}, Lcom/miui/antispam/firewall/MarkNumberActivity;->access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    goto :goto_0

    .line 166
    .end local v0           #catId:I
    .end local v1           #catTitle:Ljava/lang/String;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030007

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, inputView:Landroid/view/View;
    const v5, 0x7f09000a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, category:Landroid/widget/TextView;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/miui/antispam/firewall/MarkNumberActivity$1;->this$0:Lcom/miui/antispam/firewall/MarkNumberActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070083

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;

    invoke-direct {v7, p0, v2}, Lcom/miui/antispam/firewall/MarkNumberActivity$1$1;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity$1;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
