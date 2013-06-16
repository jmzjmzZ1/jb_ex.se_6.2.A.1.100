.class public Lcom/android/phone/FdnList;
.super Lcom/android/phone/ADNList;
.source "FdnList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    return-void
.end method

.method private addContact()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method private deleteSelected()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->deleteSelected(I)V

    .line 208
    return-void
.end method

.method private deleteSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 216
    const-class v3, Lcom/android/phone/DeleteFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 217
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v2}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 221
    :cond_0
    return-void
.end method

.method private dialSelected(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 230
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private editSelected()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 188
    return-void
.end method

.method private editSelected(I)V
    .locals 4
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 199
    const-class v3, Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v0, "number"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/phone/FdnList;->startActivity(Landroid/content/Intent;)V

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 92
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    .line 93
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 95
    .local v1, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 108
    .end local v1           #position:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 97
    .restart local v1       #position:I
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->editSelected(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->deleteSelected(I)V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/phone/FdnList;->dialSelected(I)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 55
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/ADNList;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 61
    instance-of v5, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v5, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p3

    .line 65
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 67
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    iget v6, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/FdnList;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 73
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    move-object v4, v1

    .line 81
    .local v4, title:Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 82
    const/4 v5, 0x4

    const v6, 0x7f0b0297

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 83
    const/4 v5, 0x2

    const v6, 0x7f0b0295

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 84
    const/4 v5, 0x3

    const v6, 0x7f0b0296

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 75
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    move-object v4, v2

    .restart local v4       #title:Ljava/lang/String;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b0294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080033

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 128
    const/4 v1, 0x2

    const v2, 0x7f0b0295

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 130
    const/4 v1, 0x3

    const v2, 0x7f0b0296

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 169
    invoke-direct {p0, p3}, Lcom/android/phone/FdnList;->editSelected(I)V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/FdnList;->addContact()V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/FdnList;->editSelected()V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/FdnList;->deleteSelected()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getSelectedItemPosition()I

    move-result v2

    if-ltz v2, :cond_0

    move v0, v1

    .line 140
    .local v0, hasSelection:Z
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    return v1

    .line 138
    .end local v0           #hasSelection:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/phone/FdnList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
