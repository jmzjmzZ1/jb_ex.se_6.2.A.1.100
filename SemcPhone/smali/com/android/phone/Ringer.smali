.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, -0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 68
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 69
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 88
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 92
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Ringer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/phone/Ringer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4
    .parameter

    .prologue
    .line 76
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 82
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 80
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 359
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 310
    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 356
    :cond_0
    return-void
.end method


# virtual methods
.method isRinging()Z
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ring()V
    .locals 8

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 149
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ring()..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 151
    :cond_0
    monitor-enter p0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v2, :cond_2

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 154
    new-instance v2, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 155
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- starting vibrator..."

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v2}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 161
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 163
    .local v1, isRingerNormalMode:Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getCallIlluminationInstance()Lcom/android/phone/SomcCallIllumination;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/SomcCallIllumination;->startIlluminationForRingingCall(ZZ)V

    .line 166
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_5

    .line 168
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_3

    .line 169
    const-string v2, "skipping ring because volume is zero and no wired headset on"

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 171
    :cond_3
    monitor-exit p0

    .line 198
    :goto_1
    return-void

    .line 161
    .end local v1           #isRingerNormalMode:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 174
    .restart local v1       #isRingerNormalMode:Z
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 175
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v2, v2, v5

    if-gez v2, :cond_6

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 177
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    :goto_2
    monitor-exit p0

    goto :goto_1

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isRingerNormalMode:Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 182
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #isRingerNormalMode:Z
    :cond_6
    :try_start_1
    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_8

    .line 185
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_7

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delaying ring by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 188
    :cond_7
    iget-object v2, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 194
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 305
    :cond_0
    return-void
.end method

.method shouldVibrate()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 201
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 202
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 203
    .local v1, ringerMode:I
    iget-object v4, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    if-eqz v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    if-eq v1, v2, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method stopRing()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "stopRing()..."

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 219
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 221
    .local v1, isRingerNormalMode:Z
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getCallIlluminationInstance()Lcom/android/phone/SomcCallIllumination;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/phone/SomcCallIllumination;->stopIlluminationForRingingCall(ZZ)V

    .line 223
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    .line 224
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 225
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 226
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 229
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 230
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 231
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 232
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 241
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 243
    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v3, :cond_4

    .line 244
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 245
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 246
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 249
    :cond_4
    iget-object v3, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 234
    :cond_5
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "- stopRing: null mRingHandler!"

    invoke-static {v3}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #isRingerNormalMode:Z
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method
