.class public Lcom/android/phone/SomcRejectMsgManager;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;,
        Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;,
        Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;,
        Lcom/android/phone/SomcRejectMsgManager$DbFailListener;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field static final DEFAULT_MESSAGES_ARRAY:[I

.field private static sInstance:Lcom/android/phone/SomcRejectMsgManager;

.field private static final sPendingRejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://com.android.phone.somcrejectmsgprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->DEFAULT_MESSAGES_ARRAY:[I

    return-void

    :array_0
    .array-data 0x4
        0x5t 0x1t 0xbt 0x7ft
        0x6t 0x1t 0xbt 0x7ft
        0x7t 0x1t 0xbt 0x7ft
        0x8t 0x1t 0xbt 0x7ft
        0x9t 0x1t 0xbt 0x7ft
        0xat 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    .line 53
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$1;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcRejectMsgManager$1;-><init>(Lcom/android/phone/SomcRejectMsgManager;)V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcRejectMsgManager"

    const-string v3, "SomcRejectMsgManager construct"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;-><init>(Lcom/android/phone/SomcRejectMsgManager;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    .line 99
    invoke-direct {p0}, Lcom/android/phone/SomcRejectMsgManager;->readMsgsFromDb()V

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/SomcRejectMsgManager;->mLanguageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcRejectMsgManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/SomcRejectMsgManager;->readMsgsFromDb()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcRejectMsgManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/SomcRejectMsgManager;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    return-object v0
.end method

.method static init()V
    .locals 4

    .prologue
    .line 85
    const-class v1, Lcom/android/phone/SomcRejectMsgManager;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/android/phone/SomcRejectMsgManager;

    invoke-direct {v0}, Lcom/android/phone/SomcRejectMsgManager;-><init>()V

    sput-object v0, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    .line 92
    :cond_0
    :goto_0
    monitor-exit v1

    .line 93
    return-void

    .line 89
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcRejectMsgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->sInstance:Lcom/android/phone/SomcRejectMsgManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readMsgsFromDb()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private updateMsgInDb(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 7
    .parameter "message"
    .parameter "id"
    .parameter "dbFailListener"

    .prologue
    .line 144
    new-instance v2, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;-><init>(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V

    .line 146
    .local v2, dbInfo:Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v4, cv:Landroid/content/ContentValues;
    const-string v0, "message"

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mRejectMsgAsyncQueryHandler:Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/SomcRejectMsgManager$RejectMsgAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method addPendingRejectMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "message"

    .prologue
    .line 240
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 241
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    monitor-exit v2

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_1
    new-instance v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, rejMsg:Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    sget-object v1, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 245
    sget-object v1, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0           #rejMsg:Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getRejectMsgs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/SomcRejectMsgManager;->mListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method sendPendingRejectMsgForNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 230
    sget-object v3, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 231
    :try_start_0
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    .line 232
    .local v1, msgInfo:Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    iget-object v2, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->content:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/phone/SomcRejectMsgManager;->sendRejectMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v2, Lcom/android/phone/SomcRejectMsgManager;->sPendingRejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #msgInfo:Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    return-void
.end method

.method sendRejectMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "recipient"
    .parameter "content"

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 121
    const v2, 0x7f0b0101

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 123
    return-void
.end method

.method updateRejMsg(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 0
    .parameter "str"
    .parameter "pos"
    .parameter "dbFailListener"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/SomcRejectMsgManager;->updateMsgInDb(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V

    .line 110
    return-void
.end method

.method writeRejectMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sms_body"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
