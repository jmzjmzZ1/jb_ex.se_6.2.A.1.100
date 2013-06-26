.class public Lcom/miui/antispam/firewall/MarkNumberActivity;
.super Landroid/app/Activity;
.source "MarkNumberActivity.java"


# static fields
.field private static final CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String;

.field private static final MARKEDNUMBER_PROJECTION:[Ljava/lang/String;

.field private static final MATRIXCURSOR_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCategoryCount:I

.field private mCustomTitle:Ljava/lang/String;

.field mDialog:Landroid/app/AlertDialog;

.field mIdPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMarked:Z

.field private mMarkedId:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->MATRIXCURSOR_PROJECTION:[Ljava/lang/String;

    .line 70
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "cat_id"

    aput-object v1, v0, v2

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->MARKEDNUMBER_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cat_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mMarkedId:I

    .line 45
    iput v1, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCategoryCount:I

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIdPairs:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/antispam/firewall/MarkNumberActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCategoryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/antispam/firewall/MarkNumberActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/firewall/MarkNumberActivity;->doDataBaseOperation(ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/antispam/firewall/MarkNumberActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method private checkMarkState(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/antispam/firewall/MarkNumberActivity;->MARKEDNUMBER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 247
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    .line 249
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 251
    iget v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCategoryCount:I

    iput v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mMarkedId:I

    .line 252
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCustomTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    if-nez v0, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/dataupdate/AntiSpam$CloudAntiSpam;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/antispam/firewall/MarkNumberActivity;->CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 269
    if-eqz v6, :cond_3

    .line 271
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    .line 274
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 275
    .local v7, id:I
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIdPairs:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mMarkedId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    .end local v7           #id:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_3
    return-void

    .line 254
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 255
    .restart local v7       #id:I
    if-lez v7, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIdPairs:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mMarkedId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 261
    .end local v7           #id:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 278
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private doDataBaseOperation(ILandroid/content/ContentValues;)V
    .locals 1
    .parameter "operation"
    .parameter "values"

    .prologue
    .line 290
    new-instance v0, Lcom/miui/antispam/firewall/MarkNumberActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/antispam/firewall/MarkNumberActivity$5;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity;ILandroid/content/ContentValues;)V

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/MarkNumberActivity$5;->start()V

    .line 312
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 94
    .local v13, i:Landroid/content/Intent;
    const-string v2, "number"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;

    .line 96
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 97
    .local v24, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/dataupdate/AntiSpam$Category;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    .local v8, c:Landroid/database/Cursor;
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/miui/antispam/firewall/MarkNumberActivity;->MATRIXCURSOR_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 100
    .local v18, matrixCursor:Landroid/database/MatrixCursor;
    if-eqz v8, :cond_2

    .line 102
    const/4 v15, 0x0

    .local v15, itemIndex:I
    move/from16 v16, v15

    .line 103
    .end local v15           #itemIndex:I
    .local v16, itemIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 105
    .local v23, type:I
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 106
    .local v14, id:I
    const-string v19, ""

    .line 108
    .local v19, title:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_5

    if-lez v14, :cond_5

    .line 109
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 110
    .local v22, titleString:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 111
    move-object/from16 v19, v22

    .line 113
    const/16 v20, 0x0

    .line 114
    .local v20, titleJSON:Lorg/json/JSONObject;
    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v22}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .end local v20           #titleJSON:Lorg/json/JSONObject;
    .local v21, titleJSON:Lorg/json/JSONObject;
    if-eqz v21, :cond_0

    .line 116
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, lg:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    .line 123
    .end local v17           #lg:Ljava/lang/String;
    .end local v21           #titleJSON:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    const/4 v2, 0x3

    :try_start_3
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 124
    .local v9, date:J
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v19, v2, v3

    const/4 v3, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIdPairs:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    add-int/lit8 v15, v16, 0x1

    .end local v16           #itemIndex:I
    .restart local v15       #itemIndex:I
    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v9           #date:J
    .end local v22           #titleString:Ljava/lang/String;
    :goto_2
    move/from16 v16, v15

    .line 127
    .end local v15           #itemIndex:I
    .restart local v16       #itemIndex:I
    goto :goto_0

    .line 119
    .restart local v20       #titleJSON:Lorg/json/JSONObject;
    .restart local v22       #titleString:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 120
    .local v12, e:Lorg/json/JSONException;
    :goto_3
    :try_start_5
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 129
    .end local v12           #e:Lorg/json/JSONException;
    .end local v14           #id:I
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #titleJSON:Lorg/json/JSONObject;
    .end local v22           #titleString:Ljava/lang/String;
    .end local v23           #type:I
    :catchall_0
    move-exception v2

    move/from16 v15, v16

    .end local v16           #itemIndex:I
    .restart local v15       #itemIndex:I
    :goto_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .end local v15           #itemIndex:I
    .restart local v16       #itemIndex:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 132
    .end local v16           #itemIndex:I
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCategoryCount:I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/antispam/firewall/MarkNumberActivity;->checkMarkState(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/miui/antispam/firewall/MarkNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 137
    .restart local v19       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCustomTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mCustomTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 140
    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v19, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 142
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    .local v11, dialogBuilder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 144
    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mMarkedId:I

    const-string v3, "title"

    new-instance v4, Lcom/miui/antispam/firewall/MarkNumberActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/miui/antispam/firewall/MarkNumberActivity$1;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity;Landroid/database/MatrixCursor;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    const/high16 v2, 0x104

    new-instance v3, Lcom/miui/antispam/firewall/MarkNumberActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/antispam/firewall/MarkNumberActivity$2;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mIsMarked:Z

    if-eqz v2, :cond_4

    .line 220
    const v2, 0x7f07007e

    new-instance v3, Lcom/miui/antispam/firewall/MarkNumberActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/antispam/firewall/MarkNumberActivity$3;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity;)V

    invoke-virtual {v11, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    :cond_4
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/antispam/firewall/MarkNumberActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/miui/antispam/firewall/MarkNumberActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/antispam/firewall/MarkNumberActivity$4;-><init>(Lcom/miui/antispam/firewall/MarkNumberActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 238
    return-void

    .line 129
    .end local v11           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .restart local v9       #date:J
    .restart local v14       #id:I
    .restart local v15       #itemIndex:I
    .restart local v22       #titleString:Ljava/lang/String;
    .restart local v23       #type:I
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 119
    .end local v9           #date:J
    .end local v15           #itemIndex:I
    .restart local v16       #itemIndex:I
    .restart local v21       #titleJSON:Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    move-object/from16 v20, v21

    .end local v21           #titleJSON:Lorg/json/JSONObject;
    .restart local v20       #titleJSON:Lorg/json/JSONObject;
    goto/16 :goto_3

    .end local v20           #titleJSON:Lorg/json/JSONObject;
    .end local v22           #titleString:Ljava/lang/String;
    :cond_5
    move/from16 v15, v16

    .end local v16           #itemIndex:I
    .restart local v15       #itemIndex:I
    goto/16 :goto_2
.end method
