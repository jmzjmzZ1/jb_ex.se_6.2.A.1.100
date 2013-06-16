.class public Lcom/android/phone/CallerInfoCache;
.super Ljava/lang/Object;
.source "CallerInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallerInfoCache$1;,
        Lcom/android/phone/CallerInfoCache$CacheAsyncTask;,
        Lcom/android/phone/CallerInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

.field private final mContext:Landroid/content/Context;

.field private volatile mNumberToEntry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallerInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallerInfoCache;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallerInfoCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallerInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/CallerInfoCache;->refreshCacheEntry()V

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "init()"

    invoke-static {v1}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 157
    :cond_0
    new-instance v0, Lcom/android/phone/CallerInfoCache;

    invoke-direct {v0, p0}, Lcom/android/phone/CallerInfoCache;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, cache:Lcom/android/phone/CallerInfoCache;
    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache;->startAsyncCache()V

    .line 160
    invoke-direct {v0}, Lcom/android/phone/CallerInfoCache;->setRepeatingCacheUpdateAlarm()V

    .line 161
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 330
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method private putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "numberOrSipAddress"
    .parameter "customRingtone"
    .parameter "sendToVoicemail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallerInfoCache$CacheEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .line 284
    .local v0, entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 285
    new-instance v1, Lcom/android/phone/CallerInfoCache$CacheEntry;

    invoke-direct {v1, p3, p4}, Lcom/android/phone/CallerInfoCache$CacheEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    new-instance v1, Lcom/android/phone/CallerInfoCache$CacheEntry;

    invoke-direct {v1, p3, p4}, Lcom/android/phone/CallerInfoCache$CacheEntry;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refreshCacheEntry()V
    .locals 19

    .prologue
    .line 198
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "refreshCacheEntry() started"

    invoke-static {v3}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v9, 0x0

    .line 208
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/phone/CallerInfoCache;->PROJECTION:[Ljava/lang/String;

    const-string v6, "((custom_ringtone IS NOT NULL OR send_to_voicemail=1) AND data1 IS NOT NULL)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 210
    if-eqz v9, :cond_b

    .line 213
    new-instance v15, Ljava/util/HashMap;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 216
    .local v15, newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 217
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 218
    .local v17, number:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 219
    .local v16, normalizedNumber:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 222
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 224
    :cond_1
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, customRingtone:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v18, 0x1

    .line 227
    .local v18, sendToVoicemail:Z
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v15, v1, v10, v2}, Lcom/android/phone/CallerInfoCache;->putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
    .end local v10           #customRingtone:Ljava/lang/String;
    .end local v15           #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    .end local v16           #normalizedNumber:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #sendToVoicemail:Z
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_2

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 225
    .restart local v10       #customRingtone:Ljava/lang/String;
    .restart local v15       #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    .restart local v16       #normalizedNumber:Ljava/lang/String;
    .restart local v17       #number:Ljava/lang/String;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 240
    .restart local v18       #sendToVoicemail:Z
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v14

    .line 241
    .local v14, length:I
    const/4 v3, 0x7

    if-le v14, v3, :cond_5

    add-int/lit8 v3, v14, -0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, key:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v15, v13, v10, v1}, Lcom/android/phone/CallerInfoCache;->putNewEntryWhenAppropriate(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v13           #key:Ljava/lang/String;
    :cond_5
    move-object/from16 v13, v16

    .line 241
    goto :goto_2

    .line 249
    .end local v10           #customRingtone:Ljava/lang/String;
    .end local v14           #length:I
    .end local v16           #normalizedNumber:Ljava/lang/String;
    .end local v17           #number:Ljava/lang/String;
    .end local v18           #sendToVoicemail:Z
    :cond_6
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_7

    .line 250
    sget-object v3, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New cache size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 252
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    sget-object v4, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 256
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    .line 258
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_8

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching entries are done. Total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v15           #newNumberToEntry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/phone/CallerInfoCache$CacheEntry;>;"
    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    .line 271
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_9
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_a

    const-string v3, "refreshCacheEntry() ended"

    invoke-static {v3}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 276
    :cond_a
    return-void

    .line 267
    :cond_b
    :try_start_2
    sget-object v3, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private setRepeatingCacheUpdateAlarm()V
    .locals 7

    .prologue
    const-wide/32 v4, 0x1b77400

    .line 184
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setRepeatingCacheUpdateAlarm"

    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 186
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.UPDATE_CALLER_INFO_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/CallerInfoCacheUpdateReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 190
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 192
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 195
    return-void
.end method


# virtual methods
.method public getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;
    .locals 6
    .parameter "number"

    .prologue
    .line 303
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 306
    sget-object v4, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Fallback cache isn\'t ready."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 311
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 312
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to lookup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .line 325
    .local v0, entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    :goto_1
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obtained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, normalizedNumber:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 318
    .local v2, length:I
    const/4 v4, 0x7

    if-le v2, v4, :cond_5

    add-int/lit8 v4, v2, -0x7

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, key:Ljava/lang/String;
    :goto_2
    sget-boolean v4, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to lookup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 323
    :cond_4
    iget-object v4, p0, Lcom/android/phone/CallerInfoCache;->mNumberToEntry:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallerInfoCache$CacheEntry;

    .restart local v0       #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    goto :goto_1

    .end local v0           #entry:Lcom/android/phone/CallerInfoCache$CacheEntry;
    .end local v1           #key:Ljava/lang/String;
    :cond_5
    move-object v1, v3

    .line 318
    goto :goto_2
.end method

.method startAsyncCache()V
    .locals 2

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "startAsyncCache"

    invoke-static {v0}, Lcom/android/phone/CallerInfoCache;->log(Ljava/lang/String;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/android/phone/CallerInfoCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Previous cache task is remaining."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->cancel(Z)Z

    .line 176
    :cond_1
    new-instance v0, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;-><init>(Lcom/android/phone/CallerInfoCache;Lcom/android/phone/CallerInfoCache$1;)V

    iput-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    .line 177
    iget-object v0, p0, Lcom/android/phone/CallerInfoCache;->mCacheAsyncTask:Lcom/android/phone/CallerInfoCache$CacheAsyncTask;

    invoke-virtual {v0}, Lcom/android/phone/CallerInfoCache$CacheAsyncTask;->acquireWakeLockAndExecute()V

    .line 178
    return-void
.end method
