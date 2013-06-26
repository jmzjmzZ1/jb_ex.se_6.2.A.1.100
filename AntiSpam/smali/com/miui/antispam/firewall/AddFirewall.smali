.class public Lcom/miui/antispam/firewall/AddFirewall;
.super Landroid/app/Activity;
.source "AddFirewall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/AddFirewall$OKListener;,
        Lcom/miui/antispam/firewall/AddFirewall$CancelListener;,
        Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;
    }
.end annotation


# static fields
.field public static MODE:Ljava/lang/String;

.field public static final NO_PRIVATE_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mId:Ljava/lang/String;

.field private mImportMs:Landroid/widget/CheckBox;

.field private mMode:I

.field private mNotesView:Landroid/widget/TextView;

.field private mNumberEdit:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mPhoneNumbers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "privacy_flag"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall;->NO_PRIVATE_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "mode"

    sput-object v0, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/antispam/firewall/AddFirewall;[Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/antispam/firewall/AddFirewall;->importSmsAndCallLog([Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/AddFirewall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/AddFirewall;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInWhitelist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/antispam/firewall/AddFirewall;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/antispam/firewall/AddFirewall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/antispam/firewall/AddFirewall;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addIntoBatchOperation(Landroid/database/Cursor;Lmiui/provider/BatchOperation;I)V
    .locals 6
    .parameter "cursor"
    .parameter "batchOperations"
    .parameter "type"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 431
    sget-object v1, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 433
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    if-nez p3, :cond_1

    .line 434
    const-string v1, "number"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 435
    const-string v1, "date"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 436
    const-string v1, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    const-string v1, "reason"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 438
    const-string v1, "read"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 447
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2, v1}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 448
    return-void

    .line 439
    :cond_1
    if-ne p3, v4, :cond_0

    .line 440
    const-string v1, "number"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 441
    const-string v1, "date"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    const-string v1, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 443
    const-string v1, "data1"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 444
    const-string v1, "reason"

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 445
    const-string v1, "read"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private importSmsAndCallLog([Ljava/lang/String;J)V
    .locals 23
    .parameter "numbers"
    .parameter "current"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_1

    .line 428
    :cond_0
    return-void

    .line 328
    :cond_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v19, normalizedNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v9, p1

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_3

    aget-object v20, v9, v15

    .line 331
    .local v20, number:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 332
    invoke-static/range {v20 .. v20}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 336
    .end local v20           #number:Ljava/lang/String;
    :cond_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v22, smsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v12, callLogIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Lmiui/provider/BatchOperation;

    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "firewall"

    invoke-direct {v10, v2, v3}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 340
    .local v10, batchOperations:Lmiui/provider/BatchOperation;
    move-object/from16 v9, p1

    array-length v0, v9

    move/from16 v18, v0

    const/4 v15, 0x0

    move/from16 v16, v15

    .end local v15           #i$:I
    .local v16, i$:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-object v21, v9, v16

    .line 342
    .local v21, phoneNumber:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/antispam/firewall/AddFirewall;->NO_PRIVATE_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "address"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "body"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "date"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(address, ?, 0) AND date < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 353
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 355
    .end local v16           #i$:I
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 356
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 358
    .local v8, address:Ljava/lang/String;
    const/4 v14, 0x0

    .line 359
    .local v14, found:Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 360
    .restart local v20       #number:Ljava/lang/String;
    invoke-static {v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 361
    const/4 v14, 0x1

    .line 366
    .end local v20           #number:Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_4

    .line 367
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v2}, Lcom/miui/antispam/firewall/AddFirewall;->addIntoBatchOperation(Landroid/database/Cursor;Lmiui/provider/BatchOperation;I)V

    .line 369
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_4

    .line 370
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 374
    .end local v8           #address:Ljava/lang/String;
    .end local v14           #found:Z
    .end local v15           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v13

    .line 375
    .local v13, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "AddFirewall"

    const-string v3, "import sms error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 382
    .end local v13           #e:Ljava/lang/Exception;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PHONE_NUMBERS_EQUAL(number, ?, 0) AND date < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 391
    if-eqz v11, :cond_b

    .line 393
    :cond_8
    :goto_4
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 395
    const/4 v14, 0x0

    .line 396
    .restart local v14       #found:Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 397
    .restart local v20       #number:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 399
    const/4 v14, 0x1

    .line 403
    .end local v20           #number:Ljava/lang/String;
    :cond_a
    if-eqz v14, :cond_8

    .line 404
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10, v2}, Lcom/miui/antispam/firewall/AddFirewall;->addIntoBatchOperation(Landroid/database/Cursor;Lmiui/provider/BatchOperation;I)V

    .line 406
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_8

    .line 407
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 411
    .end local v14           #found:Z
    .end local v15           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v13

    .line 412
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "AddFirewall"

    const-string v3, "import call log error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 414
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 340
    .end local v13           #e:Ljava/lang/Exception;
    :cond_b
    :goto_5
    add-int/lit8 v15, v16, 0x1

    .local v15, i$:I
    move/from16 v16, v15

    .end local v15           #i$:I
    .restart local v16       #i$:I
    goto/16 :goto_1

    .line 377
    .end local v16           #i$:I
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 414
    :cond_d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 418
    .end local v11           #c:Landroid/database/Cursor;
    .end local v21           #phoneNumber:Ljava/lang/String;
    .restart local v16       #i$:I
    :cond_e
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 419
    invoke-virtual {v10}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 422
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v16           #i$:I
    .local v15, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 423
    .local v17, id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    .line 425
    .end local v17           #id:Ljava/lang/String;
    :cond_10
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 426
    .restart local v17       #id:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/antispam/firewall/AddFirewall$CalllogQuery;->URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7
.end method

.method private isInBlacklist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .line 303
    :cond_0
    :goto_0
    return v7

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 295
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 296
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const/4 v7, 0x1

    .line 302
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 299
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private isInWhitelist(Ljava/lang/String;)Z
    .locals 8
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    .line 321
    :cond_0
    :goto_0
    return v7

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 314
    .local v7, result:Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    const/4 v7, 0x1

    .line 320
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 317
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doAddAndImport(Ljava/lang/String;Z)V
    .locals 3
    .parameter "number"
    .parameter "shouldImport"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-direct {p0, p1}, Lcom/miui/antispam/firewall/AddFirewall;->isInBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0, p2}, Lcom/miui/antispam/firewall/AddFirewall;->doAddAndImport([Ljava/lang/String;Z)V

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    const v0, 0x7f07006b

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->finish()V

    goto :goto_0
.end method

.method public doAddAndImport([Ljava/lang/String;Z)V
    .locals 8
    .parameter "numbers"
    .parameter "shouldImport"

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 462
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 463
    .local v2, pDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 465
    .local v5, current:J
    iget v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    if-ne v0, v1, :cond_1

    .line 466
    :cond_0
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 471
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 472
    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 474
    new-instance v0, Lcom/miui/antispam/firewall/AddFirewall$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/firewall/AddFirewall$1;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Landroid/app/ProgressDialog;[Ljava/lang/String;ZJ)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/antispam/firewall/AddFirewall$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 512
    return-void

    .line 468
    :cond_1
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const/high16 v10, 0x7f03

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 107
    .local v8, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 110
    const/high16 v9, 0x7f09

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    .line 111
    const v9, 0x7f090001

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    .line 112
    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    .line 113
    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    .line 114
    const/4 v7, 0x0

    .line 116
    .local v7, showTextEdit:Z
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/AddFirewall;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, i:Landroid/content/Intent;
    sget-object v9, Lcom/miui/antispam/firewall/AddFirewall;->MODE:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    .line 118
    const-string v9, "id"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mId:Ljava/lang/String;

    .line 119
    const-string v9, "number"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, phoneNumber:Ljava/lang/String;
    const-string v9, "notes"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, notes:Ljava/lang/String;
    iget v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mMode:I

    packed-switch v9, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    if-eqz v7, :cond_6

    .line 212
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberEdit:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_1
    const v9, 0x7f070063

    new-instance v10, Lcom/miui/antispam/firewall/AddFirewall$OKListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/miui/antispam/firewall/AddFirewall$OKListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v9, 0x7f070064

    new-instance v10, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/miui/antispam/firewall/AddFirewall$CancelListener;-><init>(Lcom/miui/antispam/firewall/AddFirewall;Lcom/miui/antispam/firewall/AddFirewall$1;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void

    .line 124
    :pswitch_0
    const v9, 0x7f070065

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 126
    const-string v9, "numbers"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    .line 127
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    array-length v4, v9

    .line 128
    .local v4, mount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v3, message:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 130
    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 131
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_2
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v1

    .line 137
    .local v1, enableFirewall:Z
    if-nez v1, :cond_1

    .line 139
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f070047

    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .end local v1           #enableFirewall:Z
    :cond_1
    const/4 v7, 0x0

    .line 143
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v9, 0x1

    if-le v4, v9, :cond_2

    .line 145
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_2
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    :cond_3
    const v9, 0x7f070043

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 152
    .end local v3           #message:Ljava/lang/StringBuilder;
    .end local v4           #mount:I
    :pswitch_1
    const v9, 0x7f070066

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 154
    const-string v9, "numbers"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    .line 155
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    array-length v4, v9

    .line 156
    .restart local v4       #mount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .restart local v3       #message:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 158
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    .line 159
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mPhoneNumbers:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :goto_3
    invoke-static {p0}, Lcom/miui/antispam/firewall/FirewallHelper;->getFirewallEnalbed(Landroid/content/Context;)Z

    move-result v1

    .line 165
    .restart local v1       #enableFirewall:Z
    if-nez v1, :cond_4

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f070047

    invoke-virtual {p0, v10}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .end local v1           #enableFirewall:Z
    :cond_4
    const/4 v7, 0x0

    .line 171
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v9, 0x1

    if-le v4, v9, :cond_0

    .line 173
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 161
    :cond_5
    const v9, 0x7f070044

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/miui/antispam/firewall/AddFirewall;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 179
    .end local v3           #message:Ljava/lang/StringBuilder;
    .end local v4           #mount:I
    :pswitch_2
    const v9, 0x7f070065

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 180
    const/4 v7, 0x1

    .line 181
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mImportMs:Landroid/widget/CheckBox;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 186
    :pswitch_3
    const v9, 0x7f070066

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 187
    const/4 v7, 0x1

    .line 188
    goto/16 :goto_0

    .line 192
    :pswitch_4
    const v9, 0x7f070067

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 193
    const/4 v7, 0x0

    .line 194
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    const v9, 0x7f070068

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 201
    const/4 v7, 0x0

    .line 202
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNotesView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    iget-object v9, p0, Lcom/miui/antispam/firewall/AddFirewall;->mNumberView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
