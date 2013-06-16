.class public Lcom/android/phone/SomcCallIllumination;
.super Ljava/lang/Object;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;,
        Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    }
.end annotation


# static fields
.field private static final SETTINGS_ILLUMINATION_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/SomcCallIllumination;


# instance fields
.field private mContactInCallIlluminationColor:I

.field private mContext:Landroid/content/Context;

.field private mIsAttentionLightEnabled:Z

.field private mIsIlluminationEnabled:Z

.field private mIsScreenReceiverRegistered:Z

.field private mMissedCallIlluminationColor:I

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsInCallIlluminationColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/SomcCallIllumination;->SETTINGS_ILLUMINATION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Lcom/android/phone/SomcCallIllumination$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallIllumination$2;-><init>(Lcom/android/phone/SomcCallIllumination;)V

    iput-object v0, p0, Lcom/android/phone/SomcCallIllumination;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsAttentionLightEnabled:Z

    .line 125
    new-instance v0, Lcom/android/phone/SomcCallIllumination$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallIllumination$1;-><init>(Lcom/android/phone/SomcCallIllumination;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallIllumination$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->registerSettingsContentObserver()V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcCallIllumination;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->querySettingsIlluminationColor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcCallIllumination;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->queryMissedCallNotificationColor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SomcCallIllumination;ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/SomcCallIllumination;->interalStopIllumination(Ljava/lang/String;)V

    return-void
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/SomcCallIllumination;
    .locals 4
    .parameter

    .prologue
    .line 108
    const-class v1, Lcom/android/phone/SomcCallIllumination;

    monitor-enter v1

    .line 109
    :try_start_0
    sget-object v0, Lcom/android/phone/SomcCallIllumination;->sInstance:Lcom/android/phone/SomcCallIllumination;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/android/phone/SomcCallIllumination;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallIllumination;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/SomcCallIllumination;->sInstance:Lcom/android/phone/SomcCallIllumination;

    .line 114
    :goto_0
    sget-object v0, Lcom/android/phone/SomcCallIllumination;->sInstance:Lcom/android/phone/SomcCallIllumination;

    monitor-exit v1

    return-object v0

    .line 112
    :cond_0
    const-string v0, "SomcCallIllumination"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/SomcCallIllumination;->sInstance:Lcom/android/phone/SomcCallIllumination;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private interalStopIllumination(Ljava/lang/String;)V
    .locals 3
    .parameter "illuminationIntent"

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interalStopIllumination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.illumination.intent.action.STOP_LED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    return-void
.end method

.method private internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V
    .locals 3
    .parameter "color"
    .parameter "mode"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->RINGTONE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    if-ne p2, v1, :cond_1

    .line 236
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.action.START_LED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.AUDIO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ON_TIME"

    const v2, 0x7a120

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 263
    :goto_1
    return-void

    .line 240
    :cond_1
    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    if-ne p2, v1, :cond_3

    .line 241
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.action.START_LED_PULSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 245
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :goto_2
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_PULSE_ON_TIME"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_PULSE_OFF_TIME"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_NO_OF_PULSES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 247
    :cond_2
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_RGB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 254
    :cond_3
    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    if-ne p2, v1, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.action.START_LED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.sonyericsson.illumination.intent.extra.LED_ID"

    const-string v2, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :cond_4
    const-string v1, "com.sonyericsson.illumination.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 446
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcCallIllumination"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    return-void
.end method

.method private queryMissedCallNotificationColor()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->MISSED_CALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/SomcCallIllumination;->SETTINGS_ILLUMINATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 352
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    :cond_0
    const v0, -0x666667

    iput v0, p0, Lcom/android/phone/SomcCallIllumination;->mMissedCallIlluminationColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-eqz v6, :cond_1

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_1
    :goto_0
    return-void

    .line 358
    :cond_2
    :try_start_1
    const-string v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 359
    .local v9, missedCallState:Ljava/lang/String;
    const-string v0, "color"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 361
    .local v8, missedCallColor:I
    const-string v0, "OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 362
    .local v7, isMissedCallIlluminationOff:Z
    if-eqz v7, :cond_3

    const/4 v8, 0x0

    .end local v8           #missedCallColor:I
    :cond_3
    iput v8, p0, Lcom/android/phone/SomcCallIllumination;->mMissedCallIlluminationColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    if-eqz v6, :cond_1

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 365
    .end local v7           #isMissedCallIlluminationOff:Z
    .end local v9           #missedCallState:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private querySettingsIlluminationColor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->INC_CALL_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/SomcCallIllumination;->SETTINGS_ILLUMINATION_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 321
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 323
    const-string v0, "Settings provider is not existed, just using default illumination color"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V

    .line 324
    iput-boolean v7, p0, Lcom/android/phone/SomcCallIllumination;->mIsIlluminationEnabled:Z

    .line 325
    iput v7, p0, Lcom/android/phone/SomcCallIllumination;->mSettingsInCallIlluminationColor:I

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 335
    if-eqz v6, :cond_0

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 330
    :cond_2
    :try_start_1
    const-string v0, "ON"

    const-string v1, "state"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsIlluminationEnabled:Z

    .line 332
    const-string v0, "color"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcCallIllumination;->mSettingsInCallIlluminationColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    if-eqz v6, :cond_0

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 336
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private registerScreenReceiver()V
    .locals 3

    .prologue
    .line 415
    const-string v1, "registerScreenReceiver"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V

    .line 416
    iget-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsScreenReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 418
    .local v0, screenIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SomcCallIllumination;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsScreenReceiverRegistered:Z

    goto :goto_0
.end method

.method private registerSettingsContentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 436
    new-instance v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;-><init>(Lcom/android/phone/SomcCallIllumination;Landroid/os/Handler;)V

    .line 438
    .local v0, observer:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/illumination/Illumination;->INC_CALL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 440
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/illumination/Illumination;->MISSED_CALL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    return-void
.end method

.method private setAttentionLight(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    const v1, -0x666667

    .line 376
    .local v1, showColor:I
    :goto_0
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 378
    .local v0, powerManager:Landroid/os/IPowerManager;
    invoke-interface {v0, p1, v1}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0           #powerManager:Landroid/os/IPowerManager;
    :goto_1
    return-void

    .line 374
    .end local v1           #showColor:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 379
    .restart local v1       #showColor:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private unRegisterScreenReceiver()V
    .locals 4

    .prologue
    .line 425
    const-string v1, "unRegisterScreenReceiver"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V

    .line 426
    iget-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsScreenReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcCallIllumination;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SomcCallIllumination;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsScreenReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SomcCallIllumination"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister mScreenReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getMissedCallIlluminationColor()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/phone/SomcCallIllumination;->mMissedCallIlluminationColor:I

    return v0
.end method

.method public setContactIlluminationColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 147
    iput p1, p0, Lcom/android/phone/SomcCallIllumination;->mContactInCallIlluminationColor:I

    .line 148
    return-void
.end method

.method public startIlluminationForOngoingCall()V
    .locals 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsAttentionLightEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->registerScreenReceiver()V

    .line 217
    const/4 v0, -0x1

    sget-object v1, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->LIGHTON:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    goto :goto_0
.end method

.method public startIlluminationForRingingCall(ZZ)V
    .locals 3
    .parameter "isRingerNormalMode"
    .parameter "isVibrating"

    .prologue
    const/4 v2, 0x1

    .line 160
    iget-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsAttentionLightEnabled:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 161
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/SomcCallIllumination;->setAttentionLight(Z)V

    .line 164
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/SomcCallIllumination;->mIsIlluminationEnabled:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->registerScreenReceiver()V

    .line 174
    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->RINGTONE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    .line 176
    .local v0, mode:Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    :goto_1
    iget v1, p0, Lcom/android/phone/SomcCallIllumination;->mContactInCallIlluminationColor:I

    if-eqz v1, :cond_5

    .line 177
    iget v1, p0, Lcom/android/phone/SomcCallIllumination;->mContactInCallIlluminationColor:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    goto :goto_0

    .line 174
    .end local v0           #mode:Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    :cond_4
    sget-object v0, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    goto :goto_1

    .line 178
    .restart local v0       #mode:Lcom/android/phone/SomcCallIllumination$IlluminationMode;
    :cond_5
    iget v1, p0, Lcom/android/phone/SomcCallIllumination;->mSettingsInCallIlluminationColor:I

    if-ne v1, v2, :cond_6

    .line 181
    const/4 v1, -0x1

    sget-object v2, Lcom/android/phone/SomcCallIllumination$IlluminationMode;->PULSE:Lcom/android/phone/SomcCallIllumination$IlluminationMode;

    invoke-direct {p0, v1, v2}, Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    goto :goto_0

    .line 183
    :cond_6
    iget v1, p0, Lcom/android/phone/SomcCallIllumination;->mSettingsInCallIlluminationColor:I

    invoke-direct {p0, v1, v0}, Lcom/android/phone/SomcCallIllumination;->internalStartIllumination(ILcom/android/phone/SomcCallIllumination$IlluminationMode;)V

    goto :goto_0
.end method

.method public stopIlluminationForOngoingCall()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsAttentionLightEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcCallIllumination;->unRegisterScreenReceiver()V

    .line 223
    const-string v0, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallIllumination;->interalStopIllumination(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopIlluminationForRingingCall(ZZ)V
    .locals 2
    .parameter "isRingerNormalMode"
    .parameter "isVibrating"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsAttentionLightEnabled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallIllumination;->setAttentionLight(Z)V

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/SomcCallIllumination;->mIsIlluminationEnabled:Z

    if-nez v0, :cond_2

    .line 211
    :goto_0
    return-void

    .line 204
    :cond_2
    iget v0, p0, Lcom/android/phone/SomcCallIllumination;->mContactInCallIlluminationColor:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/phone/SomcCallIllumination;->mSettingsInCallIlluminationColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 206
    const-string v0, "com.sonyericsson.illumination.intent.extra.value.BUTTON_2"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallIllumination;->interalStopIllumination(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "com.sonyericsson.illumination.intent.extra.value.AUDIO"

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/SomcCallIllumination;->interalStopIllumination(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.sonyericsson.illumination.intent.extra.value.BUTTON_RGB"

    goto :goto_1
.end method
