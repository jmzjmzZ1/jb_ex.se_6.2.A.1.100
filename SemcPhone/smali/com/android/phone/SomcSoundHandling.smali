.class public Lcom/android/phone/SomcSoundHandling;
.super Ljava/lang/Object;
.source "SomcSoundHandling.java"


# instance fields
.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/HeadsetBase;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 50
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 52
    iget-object v1, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->getHeadset()Landroid/bluetooth/HeadsetBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHeadset:Landroid/bluetooth/HeadsetBase;

    .line 58
    :cond_0
    return-void
.end method

.method private connectBluetoothAudio()V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "connectBluetoothAudio"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 107
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "wants audio!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSoundHandling;->log(Ljava/lang/String;)V

    .line 119
    :cond_1
    return-void
.end method

.method private disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 126
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 193
    const-string v0, "SomcSoundHandling"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method


# virtual methods
.method public isBluetoothAudioConnected()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isMicMuted()Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerOn()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 183
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 184
    const/4 v2, 0x1

    .line 187
    :cond_0
    return v2
.end method

.method public setSound(I)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    if-ne v1, p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->disconnectBluetoothAudio()V

    .line 153
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 156
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->disconnectBluetoothAudio()V

    .line 157
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 163
    invoke-direct {p0}, Lcom/android/phone/SomcSoundHandling;->connectBluetoothAudio()V

    goto :goto_0
.end method

.method public toggleSoundPhoneSpeaker()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/SomcSoundHandling;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_0
.end method
