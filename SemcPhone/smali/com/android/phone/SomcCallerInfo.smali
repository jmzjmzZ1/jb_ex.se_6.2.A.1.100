.class public Lcom/android/phone/SomcCallerInfo;
.super Lcom/android/internal/telephony/CallerInfo;
.source "SomcCallerInfo.java"


# instance fields
.field public cachedContactNumberIcon:Landroid/graphics/Bitmap;

.field public cityIdInfo:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsVoiceMail:Z

.field public queryCityIdTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public querySnsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/phone/SomcInCallScreen$SnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public redirectingName:Ljava/lang/String;

.field public redirectingNumber:Ljava/lang/String;

.field public snsIcon:Landroid/graphics/drawable/Drawable;

.field public snsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .parameter "callerInfo"

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->name:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->cnapName:Ljava/lang/String;

    .line 77
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    iput v0, p0, Lcom/android/phone/SomcCallerInfo;->numberPresentation:I

    .line 78
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    iput v0, p0, Lcom/android/phone/SomcCallerInfo;->namePresentation:I

    .line 79
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    iput-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->contactExists:Z

    .line 80
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 81
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v0, p0, Lcom/android/phone/SomcCallerInfo;->numberType:I

    .line 82
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->numberLabel:Ljava/lang/String;

    .line 83
    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    iput v0, p0, Lcom/android/phone/SomcCallerInfo;->photoResource:I

    .line 84
    iget-wide v0, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v0, p0, Lcom/android/phone/SomcCallerInfo;->person_id:J

    .line 85
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iput-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->needUpdate:Z

    .line 86
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 87
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 88
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->shouldSendToVoicemail:Z

    .line 89
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/phone/SomcCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->isCachedPhotoCurrent:Z

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iput-boolean v2, p0, Lcom/android/phone/SomcCallerInfo;->mIsVoiceMail:Z

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iput-boolean v2, p0, Lcom/android/phone/SomcCallerInfo;->mIsEmergency:Z

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public isEmergencyNumber()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->mIsEmergency:Z

    return v0
.end method

.method public isVoiceMailNumber()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/phone/SomcCallerInfo;->mIsVoiceMail:Z

    return v0
.end method
