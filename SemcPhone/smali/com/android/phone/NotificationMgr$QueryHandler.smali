.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 345
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 346
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 464
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 465
    .local v0, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 466
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 467
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    .line 468
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 474
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    :cond_0
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 480
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 482
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected doOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "call log query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 391
    :cond_1
    if-eqz p3, :cond_0

    .line 392
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v3

    .line 397
    .local v3, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query contacts for number: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$300(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v1

    const/4 v2, -0x2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "number"

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    .end local v3           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "contact query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 409
    :cond_3
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    .line 410
    check-cast v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 412
    .restart local v3       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    const/4 v12, 0x0

    .line 413
    .local v12, personUri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 416
    const-string v1, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 418
    .local v13, person_id:J
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    .line 419
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found for phone: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". id : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 422
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 425
    .end local v13           #person_id:J
    :cond_5
    if-eqz v12, :cond_7

    .line 426
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_6

    .line 427
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start obtaining picture for the missed call. Uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 433
    :cond_6
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NotificationMgr;->access$400(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2, v12, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 436
    :cond_7
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_8

    .line 437
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "Failed to find Uri for obtaining photo. Just send notification without it."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 442
    :cond_8
    iget-object v4, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v10, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v4 .. v11}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    goto/16 :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "token"
    .parameter "photo"
    .parameter "photoIcon"
    .parameter "cookie"
    .parameter "resultIcon"

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    :cond_0
    move-object v8, p4

    .line 455
    check-cast v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    .line 456
    .local v8, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v1, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->type:Ljava/lang/String;

    iget-wide v6, v8, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 457
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 354
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/NotificationMgr$QueryHandler;->doOnQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_2

    .line 361
    :cond_0
    if-eqz p3, :cond_2

    .line 362
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_3

    const-string v1, "closing call log cursor."

    :goto_0
    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 365
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_2
    :goto_1
    return-void

    .line 363
    :cond_3
    const-string v1, "closing contact cursor."

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed onQueryComplete() SQLiteDiskIOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_2

    .line 361
    :cond_4
    if-eqz p3, :cond_2

    .line 362
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_5

    .line 363
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_6

    const-string v1, "closing call log cursor."

    :goto_2
    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 365
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 363
    :cond_6
    const-string v1, "closing contact cursor."

    goto :goto_2

    .line 357
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 358
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v1, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed onQueryComplete() SQLiteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    if-eq p1, v4, :cond_7

    if-ne p1, v5, :cond_2

    .line 361
    :cond_7
    if-eqz p3, :cond_2

    .line 362
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_8

    .line 363
    iget-object v2, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_9

    const-string v1, "closing call log cursor."

    :goto_3
    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 365
    :cond_8
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 363
    :cond_9
    const-string v1, "closing contact cursor."

    goto :goto_3

    .line 360
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    move-object v2, v1

    if-eq p1, v4, :cond_a

    if-ne p1, v5, :cond_c

    .line 361
    :cond_a
    if-eqz p3, :cond_c

    .line 362
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_b

    .line 363
    iget-object v3, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    if-ne p1, v4, :cond_d

    const-string v1, "closing call log cursor."

    :goto_4
    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 365
    :cond_b
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 363
    :cond_d
    const-string v1, "closing contact cursor."

    goto :goto_4
.end method
