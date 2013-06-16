.class Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RejectMsgAsyncQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcRejectMsgManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/SomcRejectMsgManager;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    .line 155
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 160
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "SomcRejectMsgManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RejectMsgAsyncQueryHandler onQueryComplete :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    if-nez p3, :cond_1

    .line 180
    :goto_0
    return-void

    .line 163
    :cond_1
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 178
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    :cond_3
    :try_start_1
    const-string v3, "_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 166
    .local v1, columnId:I
    const-string v3, "default_message"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 168
    .local v2, defaultMsgId:I
    const-string v3, "message"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, changedMsg:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    #getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/SomcRejectMsgManager;->access$100(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 178
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    #getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/phone/SomcRejectMsgManager;->access$100(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 178
    .end local v0           #changedMsg:Ljava/lang/String;
    .end local v1           #columnId:I
    .end local v2           #defaultMsgId:I
    :catchall_0
    move-exception v3

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 184
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcRejectMsgManager"

    const-string v3, "RejectMsgAsyncQueryHandler onUpdateComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p2

    .line 185
    check-cast v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;

    .line 186
    .local v0, dbInfo:Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
    if-lez p3, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->this$0:Lcom/android/phone/SomcRejectMsgManager;

    #getter for: Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/phone/SomcRejectMsgManager;->access$100(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;

    move-result-object v2

    iget v3, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, v0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .line 190
    .local v1, dbfailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;
    invoke-interface {v1}, Lcom/android/phone/SomcRejectMsgManager$DbFailListener;->updateFailed()V

    goto :goto_0
.end method
