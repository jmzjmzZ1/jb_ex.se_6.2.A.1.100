.class public Lcom/android/phone/SomcInCallScreen;
.super Landroid/app/Activity;
.source "SomcInCallScreen.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/CallView$CallViewActionListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcInCallScreen$21;,
        Lcom/android/phone/SomcInCallScreen$SnsInfo;,
        Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;,
        Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;,
        Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;,
        Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private final mCallRecordTimerRunnable:Ljava/lang/Runnable;

.field private mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

.field mCallTime:Lcom/android/phone/CallTime;

.field private mCallView:Lcom/android/phone/CallView;

.field private mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

.field private mContext:Landroid/content/Context;

.field private mDTMFToneEnabled:Z

.field private mEmergencyCallRetryCount:I

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field mHeadsetConnected:Z

.field mIsDestroyed:Z

.field mIsEndOrRejectBtPressed:Z

.field mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field private mLoadSnsThreadHandler:Landroid/os/Handler;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

.field private mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSystemProvided:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 139
    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    .line 181
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 278
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 303
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 326
    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mLoadSnsThreadHandler:Landroid/os/Handler;

    .line 350
    new-instance v0, Lcom/android/phone/SomcInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$1;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    .line 508
    new-instance v0, Lcom/android/phone/SomcInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$2;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    .line 3944
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/SomcInCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->getIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/SomcInCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SomcInCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/SomcInCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2836
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2837
    const-string v0, "show vm setting, finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2838
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2839
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2842
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2843
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2844
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2845
    return-void
.end method

.method private asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 4050
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/phone/SomcCallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4052
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4053
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 4054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request. (or null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4075
    :cond_1
    :goto_0
    return-void

    .line 4060
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 4061
    if-nez v1, :cond_3

    .line 4062
    const-string v0, "SomcInCallScreen"

    const-string v1, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4066
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SomcInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    :cond_4
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 4072
    const/16 v0, 0x70

    new-instance v2, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    invoke-direct {v2, v5, p1, v5}, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v0, p0, v1, p0, v2}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private asyncUpdateContactSns(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .parameter "callerInfo"

    .prologue
    .line 4082
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->querySnsTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 4124
    :goto_0
    return-void

    .line 4084
    :cond_0
    new-instance v0, Lcom/android/phone/SomcInCallScreen$17;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$17;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4122
    .local v0, querySnsTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/phone/SomcInCallScreen$SnsInfo;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->querySnsTask:Landroid/os/AsyncTask;

    .line 4123
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->querySnsTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2749
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2750
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2751
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2752
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2767
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2775
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 2776
    return-void
.end method

.method private checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1804
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1806
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return v0

    .line 1811
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1812
    if-eqz v1, :cond_0

    .line 1814
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 1815
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v1, v2, :cond_0

    .line 1820
    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1823
    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isMessagingEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 3

    .prologue
    .line 2148
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2149
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2166
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2171
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    if-nez v0, :cond_1

    .line 2193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->updateKeyguardPolicy(Z)V

    .line 2194
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->goToSleep(I)V

    .line 2196
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 2197
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3564
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3565
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 3566
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3567
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3568
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3569
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 3571
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3572
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    .line 3573
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3574
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3575
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3577
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 3578
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_4

    .line 3579
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3580
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3581
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3583
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 3584
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_6

    .line 3585
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3586
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3587
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3589
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 3590
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3591
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3592
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3595
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 3596
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3597
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3598
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3601
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 3602
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3603
    :cond_c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3604
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3607
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3608
    return-void
.end method

.method private dismissProgressIndication()V
    .locals 1

    .prologue
    .line 3676
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3677
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 3678
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3681
    :cond_1
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 2

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2852
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2853
    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2855
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2856
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 2857
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2859
    :cond_2
    return-void
.end method

.method private enableCallRecorderMenuItems(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1281
    const v3, 0x7f0700d7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1282
    .local v0, itemStartRecording:Landroid/view/MenuItem;
    const v3, 0x7f0700d8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1284
    .local v1, itemStopRecording:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1285
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1294
    :goto_0
    return-void

    .line 1287
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1290
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private endSomcInCallScreenSession(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endSomcInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3923
    if-eqz p1, :cond_1

    .line 3924
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 3932
    :cond_0
    :goto_0
    return-void

    .line 3927
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3929
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    .line 3930
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    goto :goto_0
.end method

.method private getIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resPackage"
    .parameter "iconRes"

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 557
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private handleBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3187
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    .line 3188
    const-string v2, "handleBackKey()..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3190
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3191
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeRejectMsgList()V

    .line 3215
    :cond_1
    :goto_0
    return v0

    .line 3194
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3199
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3200
    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3201
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move v0, v1

    .line 3206
    goto :goto_0

    .line 3210
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->handleBackKey()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3215
    goto :goto_0
.end method

.method private handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .parameter "somcCallerInfo"

    .prologue
    .line 4131
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4133
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallAdditionalCallInfo(Ljava/lang/String;)V

    .line 4158
    :cond_0
    :goto_0
    return-void

    .line 4136
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallAdditionalCallInfo(Ljava/lang/String;)V

    .line 4137
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 4141
    new-instance v0, Lcom/android/phone/SomcInCallScreen$18;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$18;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4156
    .local v0, queryCityIdTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    .line 4157
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 2779
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2780
    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2783
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2785
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2786
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2788
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0096

    new-instance v4, Lcom/android/phone/SomcInCallScreen$13;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/SomcInCallScreen$13;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f0b

    new-instance v4, Lcom/android/phone/SomcInCallScreen$12;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SomcInCallScreen$12;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2808
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/SomcInCallScreen$14;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$14;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2816
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/SomcInCallScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$15;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2826
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2828
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2829
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4176
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    .line 4177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a connection!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4179
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4180
    if-nez v0, :cond_1

    .line 4200
    :goto_0
    return-void

    .line 4181
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/Connection$PostDialState;

    if-nez v1, :cond_2

    .line 4182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Connection.PostDialState!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4184
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4185
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4187
    :cond_3
    sget-object v2, Lcom/android/phone/SomcInCallScreen$21;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4190
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4191
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 4192
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 4193
    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcInCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 4187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .parameter "somcCallerInfo"

    .prologue
    const/4 v1, 0x0

    .line 3083
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3085
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3089
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3090
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3094
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/phone/SomcInCallScreen$16;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$16;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->queryRedirectingInfo(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V

    goto :goto_0
.end method

.method private hideAllMenuItems(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1297
    const v0, 0x7f0700d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1298
    const v0, 0x7f0700d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1299
    const v0, 0x7f0700d7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1300
    const v0, 0x7f0700d8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1301
    return-void
.end method

.method private initContentShareProvider()V
    .locals 4

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 732
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/appextensions/ApplicationExtensionFactory;->getContentShareProxy(Landroid/content/Context;)Lcom/sonyericsson/feature/IContentShareProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    .line 734
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x70

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/SomcRichCallUIHandler;->registerForUINotification(Landroid/content/Context;Lcom/sonyericsson/feature/IContentShareProvider;Landroid/os/Handler;I)V

    .line 738
    :cond_0
    return-void
.end method

.method private internalAnswerCall()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3687
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3689
    if-eqz v0, :cond_1

    .line 3690
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3691
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3692
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3693
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3694
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3696
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3726
    :goto_0
    if-ne v0, v4, :cond_1

    .line 3730
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showSipCallingProgress()V

    .line 3735
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3736
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 3737
    return-void

    .line 3698
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-ne v0, v4, :cond_7

    .line 3704
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 3705
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 3707
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 3708
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3712
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3718
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "internalAnswerCall: answering..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3719
    :cond_6
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3723
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 1382
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1386
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1406
    :cond_2
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1417
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    const-string v0, "com.android.phone.ShowDialpad"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1423
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1427
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_0

    .line 1435
    :cond_4
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1440
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_6
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 3
    .parameter

    .prologue
    .line 4018
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 4020
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 4024
    :cond_0
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    .line 4025
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 4027
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    instance-of v0, v0, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_3

    .line 4028
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/phone/SomcCallerInfo;->cachedContactNumberIcon:Landroid/graphics/Bitmap;

    .line 4036
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    .line 4037
    const-string v0, "Load Image done: updateScreen!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4039
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 4042
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 4043
    return-void

    .line 4030
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    .line 4031
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4032
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2447
    const-string v0, "SomcInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x6c

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1526
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1527
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 1532
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 1533
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_0

    .line 1534
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1537
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    .line 1539
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v9, :cond_3

    move v5, v3

    .line 1540
    :goto_1
    if-eqz v5, :cond_1d

    .line 1543
    if-eqz v2, :cond_1d

    .line 1544
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_auto_retry"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1552
    :goto_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_4

    .line 1553
    const v0, 0x7f0b000b

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    .line 1792
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 1537
    goto :goto_0

    :cond_3
    move v5, v4

    .line 1539
    goto :goto_1

    .line 1555
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_5

    .line 1556
    const v0, 0x7f0b0010

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1558
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 1559
    const v0, 0x7f0b000f

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1561
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_7

    .line 1562
    const v0, 0x7f0b000d

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1564
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_8

    .line 1565
    const v0, 0x7f0b000e

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1567
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMSI_UNKNOWN_IN_VLR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_9

    .line 1568
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_a

    .line 1569
    const v0, 0x7f0b0012

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1572
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMEI_NOT_ACCEPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_a

    .line 1573
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_a

    .line 1574
    const v0, 0x7f0b0011

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1579
    :cond_a
    if-eqz v5, :cond_b

    .line 1580
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1581
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_12

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_12

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_12

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_12

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_12

    .line 1586
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1620
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 1621
    if-eqz v5, :cond_e

    .line 1630
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1631
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_d

    .line 1632
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1633
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v8, :cond_c

    .line 1642
    const-string v1, "SomcInCallScreen"

    const-string v7, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1644
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1652
    :cond_d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_e

    .line 1653
    invoke-static {v5}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1654
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x75

    invoke-static {v5, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1655
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1673
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1678
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_f

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v5, :cond_10

    :cond_f
    if-eqz v2, :cond_10

    move v4, v3

    .line 1682
    :cond_10
    const-string v3, "SomcInCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDisconnect: , cause="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", callDuration"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    if-eqz v4, :cond_16

    .line 1702
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_11

    .line 1703
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1708
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_3

    .line 1587
    :cond_12
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_b

    :cond_13
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_b

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_b

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_b

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_b

    .line 1593
    iget-boolean v5, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v5, :cond_14

    .line 1595
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1596
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1598
    :cond_14
    if-nez v1, :cond_15

    .line 1600
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1601
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1605
    :cond_15
    iput-boolean v3, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1710
    :cond_16
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_17

    .line 1711
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1718
    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 1724
    if-eqz v2, :cond_19

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_19

    .line 1727
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1762
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_1b

    .line 1763
    if-nez v2, :cond_1b

    .line 1767
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1771
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1772
    :cond_1a
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    .line 1781
    :cond_1b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_1c

    const/16 v0, 0x5dc

    .line 1783
    :goto_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1784
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1781
    :cond_1c
    const/16 v0, 0x7d0

    goto :goto_5

    :cond_1d
    move v1, v4

    goto/16 :goto_2
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 2493
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2494
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2497
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2508
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2509
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter

    .prologue
    .line 2204
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2205
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPhoneStateChanged()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 2212
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 2213
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2214
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    .line 2218
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2220
    :cond_1
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshCallViewSoundStates()V
    .locals 6

    .prologue
    .line 2042
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isMicMuted()Z

    move-result v2

    .line 2043
    .local v2, micMuted:Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v3

    .line 2048
    .local v3, speakerOn:Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isBluetoothConnected()Z

    move-result v0

    .line 2050
    .local v0, bluetoothHeadsetConnected:Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v1

    .line 2051
    .local v1, bluetoothSoundOn:Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isWiredHeadsetConnected()Z

    move-result v4

    .line 2053
    .local v4, wiredHeadsetConnected:Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 2054
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallView;->setSpeakerIsOn(Z)V

    .line 2055
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 2056
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v1}, Lcom/android/phone/CallView;->setBluetoothAudioIsOn(Z)V

    .line 2057
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallView;->setWiredHeadsetIsConnected(Z)V

    .line 2058
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 2059
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1319
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1322
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1334
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1335
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1336
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1337
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1340
    :cond_0
    return-void
.end method

.method private rejectCallAndSendMsg(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3507
    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 3508
    if-nez v1, :cond_1

    .line 3519
    :cond_0
    :goto_0
    return-void

    .line 3509
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send message to number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3510
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3511
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3512
    if-eqz p1, :cond_3

    .line 3513
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/SomcRejectMsgManager;->addPendingRejectMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3516
    :cond_3
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/android/phone/SomcRejectMsgManager;->writeRejectMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 3517
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "message content is to be written"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 3952
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3955
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 3956
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3971
    :cond_1
    :goto_0
    return-void

    .line 3961
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3962
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3966
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b017b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3970
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2063
    if-eqz p4, :cond_5

    .line 2064
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for foreground call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2070
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 2072
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p3}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2073
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 2074
    const-string v0, " == Showing emergency call picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2075
    :cond_1
    const/4 v0, 0x3

    move v1, v0

    move-object v2, v3

    .line 2104
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    if-eqz v0, :cond_c

    .line 2105
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p3}, Lcom/android/phone/SomcRichCallUIHandler;->getContentShareRes(Lcom/sonyericsson/feature/IContentShareProvider;Landroid/content/Context;Ljava/lang/String;)V

    .line 2107
    invoke-static {}, Lcom/android/phone/SomcRichCallUIHandler;->getShareIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2114
    :cond_2
    :goto_2
    if-eqz p4, :cond_e

    .line 2115
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallView;->setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 2122
    :goto_3
    if-eqz p4, :cond_3

    .line 2123
    if-eqz v2, :cond_f

    if-eqz p1, :cond_f

    .line 2124
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2129
    :cond_3
    :goto_4
    if-eqz p4, :cond_4

    instance-of v0, p1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_4

    .line 2130
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    move-object v0, p1

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->snsText:Ljava/lang/String;

    check-cast p1, Lcom/android/phone/SomcCallerInfo;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->snsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2133
    :cond_4
    return-void

    .line 2066
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for background call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p3}, Lcom/android/phone/SomcPhoneUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2077
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_7

    .line 2078
    const-string v0, " == Showing voicemail picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2079
    :cond_7
    const/4 v0, 0x2

    move v1, v0

    move-object v2, v3

    goto :goto_1

    .line 2080
    :cond_8
    if-eqz p1, :cond_a

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_a

    .line 2081
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_9

    .line 2082
    const-string v1, " == Cached photo is current."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2084
    :cond_9
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 2085
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2086
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_11

    .line 2087
    const-string v2, " === Showing cached photo."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    move-object v2, v1

    move v1, v0

    goto :goto_1

    .line 2090
    :cond_a
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_b

    .line 2091
    const-string v1, "showPhoto else clause.... Async update of photo!"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2093
    :cond_b
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2095
    const/4 v0, 0x0

    move v1, v0

    move-object v2, v3

    goto/16 :goto_1

    .line 2108
    :cond_c
    instance-of v0, p1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_d

    move-object v0, p1

    .line 2109
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v0, Lcom/android/phone/SomcCallerInfo;->cachedContactNumberIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 2110
    :cond_d
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2111
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    goto/16 :goto_2

    .line 2117
    :cond_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallView;->setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 2126
    :cond_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    goto/16 :goto_4

    :cond_10
    move v1, v0

    move-object v2, v3

    goto/16 :goto_1

    :cond_11
    move-object v2, v1

    move v1, v0

    goto/16 :goto_1
.end method

.method private showExitingECMDialog()V
    .locals 4

    .prologue
    .line 2713
    const-string v0, "SomcInCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2716
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2725
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 2726
    new-instance v1, Lcom/android/phone/SomcInCallScreen$10;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/SomcInCallScreen$10;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2730
    new-instance v2, Lcom/android/phone/SomcInCallScreen$11;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$11;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2736
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0335

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b018f

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2741
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2743
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2744
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2624
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2625
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGenericErrorDialog(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2632
    :cond_0
    if-eqz p2, :cond_1

    .line 2633
    new-instance v2, Lcom/android/phone/SomcInCallScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$4;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2638
    new-instance v1, Lcom/android/phone/SomcInCallScreen$5;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$5;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2643
    new-instance v0, Lcom/android/phone/SomcInCallScreen$6;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$6;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2668
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d0005

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0096

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2671
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2675
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2677
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2678
    return-void

    .line 2649
    :cond_1
    new-instance v2, Lcom/android/phone/SomcInCallScreen$7;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$7;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2654
    new-instance v1, Lcom/android/phone/SomcInCallScreen$8;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$8;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2659
    new-instance v0, Lcom/android/phone/SomcInCallScreen$9;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$9;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    goto :goto_0
.end method

.method private showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3111
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3112
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v6}, Lcom/android/phone/CallView;->setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3146
    :goto_0
    return-void

    .line 3115
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0, v6}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 3118
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 3120
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3121
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 3122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3130
    :goto_1
    if-eqz v1, :cond_1

    .line 3131
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3135
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v1, v3, v0}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 3137
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v0, v3, :cond_5

    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3139
    :goto_2
    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3140
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, v3, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v1, v0, v3, v5}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    iget-object v0, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v7, v6, v1}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3123
    :cond_2
    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 3125
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_1

    .line 3127
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :cond_5
    const-string v0, ""

    goto :goto_2
.end method

.method private showInfoForMainCall(Lcom/android/internal/telephony/Call;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 2873
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show info for main call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2875
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    .line 2877
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallView;->setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 2879
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8, v8}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 3080
    :goto_0
    return-void

    .line 2883
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2884
    if-ne v5, v7, :cond_a

    .line 2885
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v9, v0

    .line 2893
    :goto_1
    if-eqz v9, :cond_1c

    .line 2895
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    .line 2900
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 2901
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_d

    .line 2902
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {v2, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v2

    .line 2910
    :goto_2
    if-ne v5, v7, :cond_1e

    .line 2911
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 2912
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 2913
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v10

    .line 2915
    instance-of v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_e

    move-object v0, v1

    .line 2916
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move-object v5, v0

    .line 2921
    :goto_3
    if-eqz v5, :cond_1e

    .line 2922
    if-eqz v7, :cond_1d

    iget-object v0, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2923
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move v0, v3

    .line 2927
    :goto_4
    if-eqz v10, :cond_4

    iget-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2928
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    :cond_3
    move v0, v3

    .line 2937
    :cond_4
    :goto_5
    if-eqz v0, :cond_f

    .line 2938
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2940
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 2941
    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move v7, v0

    .line 2973
    :goto_6
    if-eqz v1, :cond_1b

    .line 2979
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    .line 2980
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2981
    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 2982
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2983
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 2984
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2985
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 2989
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2990
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 2994
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v5

    .line 2996
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v6, v0, :cond_15

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2997
    :goto_7
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 3000
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v10, :cond_16

    .line 3001
    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 3007
    :goto_8
    if-nez v2, :cond_6

    if-ne v6, v11, :cond_6

    .line 3009
    const-string v2, "SomcInCallScreen"

    const-string v6, "internet call, phonetype changed"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b02fd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3011
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3012
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3025
    :cond_6
    if-eqz v0, :cond_7

    const-string v6, "sip:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3026
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3029
    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 3030
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    const-string v6, ""

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallView;->setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3033
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8, v8}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 3044
    :cond_8
    :goto_9
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 3045
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V

    .line 3048
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v7, v0, v3}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    .line 3051
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3054
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3059
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v3

    :goto_a
    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 3060
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V

    goto/16 :goto_0

    .line 2886
    :cond_a
    if-eq v5, v3, :cond_b

    if-ne v5, v11, :cond_c

    .line 2888
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_1

    .line 2890
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2905
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    goto/16 :goto_2

    .line 2917
    :cond_e
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1f

    move-object v0, v1

    .line 2918
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v5, v0

    goto/16 :goto_3

    .line 2946
    :cond_f
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_10

    .line 2947
    const-string v0, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2948
    :cond_10
    instance-of v0, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_12

    .line 2950
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_11

    .line 2951
    const-string v0, "   ==> Got CallerInfo."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2954
    :cond_11
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    move v7, v3

    .line 2955
    goto/16 :goto_6

    .line 2956
    :cond_12
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_14

    .line 2959
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_13

    .line 2960
    const-string v0, "   ==> Got CallerInfoToken."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2962
    :cond_13
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move v7, v4

    goto/16 :goto_6

    .line 2964
    :cond_14
    const-string v0, "SomcInCallScreen"

    const-string v1, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v4

    move-object v1, v8

    goto/16 :goto_6

    .line 2996
    :cond_15
    const-string v0, ""

    goto/16 :goto_7

    .line 3004
    :cond_16
    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    goto/16 :goto_8

    .line 3035
    :cond_17
    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-nez v2, :cond_18

    const-string v2, ""

    :cond_18
    invoke-virtual {v6, v5, v0, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3037
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_8

    .line 3038
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v5, v0, Lcom/android/phone/SomcCallerInfo;->snsText:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->snsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5, v0}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_19
    move v0, v4

    .line 3059
    goto/16 :goto_a

    .line 3062
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallAdditionalCallInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3066
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallView;->setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3069
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8, v8}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 3074
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8}, Lcom/android/phone/CallView;->setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3077
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v8, v8}, Lcom/android/phone/CallView;->setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1d
    move v0, v2

    goto/16 :goto_4

    :cond_1e
    move v0, v2

    goto/16 :goto_5

    :cond_1f
    move-object v5, v8

    goto/16 :goto_3
.end method

.method private showProgressIndication(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3660
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3662
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3663
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3664
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3665
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3666
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3667
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3668
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3669
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3670
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2516
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStatusIndication(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2519
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallScreen$21;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2598
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2523
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_1
    :goto_0
    return-void

    .line 2535
    :pswitch_1
    const v0, 0x7f0b0057

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2542
    :pswitch_2
    const v0, 0x7f0b0054

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2547
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2548
    const v0, 0x7f0b0016

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2551
    :cond_2
    const v0, 0x7f0b0055

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2559
    :pswitch_4
    const v0, 0x7f0b0056

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2571
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 2572
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    const v1, 0x7f0b02f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2582
    :pswitch_6
    const v0, 0x7f0b0053

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2588
    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 2594
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showExitingECMDialog()V

    goto :goto_0

    .line 2519
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 8
    .parameter "notification"

    .prologue
    const/4 v7, 0x1

    .line 574
    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 575
    .local v0, notificationCode:I
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 576
    .local v2, notificationType:I
    const-string v1, ""

    .line 580
    .local v1, notificationText:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 583
    packed-switch v0, :pswitch_data_0

    .line 589
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 612
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 613
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 614
    .local v3, r:Landroid/content/res/Resources;
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 615
    .local v4, toast:Landroid/widget/Toast;
    const/16 v5, 0x30

    const/4 v6, 0x0

    const v7, 0x7f09000b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 616
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 618
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_1
    return-void

    .line 585
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b008c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    goto :goto_0

    .line 592
    :cond_2
    if-ne v2, v7, :cond_0

    .line 595
    packed-switch v0, :pswitch_data_1

    .line 606
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b008d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    goto :goto_0

    .line 602
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b008e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 603
    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 595
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4207
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4210
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4211
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4213
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mWaitPromptDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4214
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 4215
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4216
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4217
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4220
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0113

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0197

    new-instance v2, Lcom/android/phone/SomcInCallScreen$20;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$20;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0198

    new-instance v2, Lcom/android/phone/SomcInCallScreen$19;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$19;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4237
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4240
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4241
    return-void
.end method

.method private startDtmfTone(C)V
    .locals 2
    .parameter

    .prologue
    .line 3522
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "start playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3523
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3524
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startDtmfTone, NOT okToDialDTMFTones"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3541
    :cond_1
    :goto_0
    return-void

    .line 3528
    :cond_2
    invoke-static {p1}, Lcom/android/phone/SomcTonePlayer;->isValidTone(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3529
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone, NOT validTone, tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3533
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3535
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 3538
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3539
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/SomcTonePlayer;->playToneByChar(CI)V

    goto :goto_0
.end method

.method private stopDtmfTone()V
    .locals 1

    .prologue
    .line 3544
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stop playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 3547
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3548
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->stopTone()V

    .line 3550
    :cond_1
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    .locals 3

    .prologue
    .line 2233
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2234
    const-string v0, "syncWithPhoneState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2242
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 2247
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v1

    .line 2249
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    .line 2252
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    .line 2253
    const-string v0, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2254
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2255
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    .line 2260
    :goto_0
    return-object v0

    .line 2258
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_5

    .line 2259
    const-string v0, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2260
    :cond_5
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1346
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1347
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1348
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1350
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1351
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x68

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1352
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1354
    return-void
.end method

.method private updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3747
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3748
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/CallView$ConferenceCallItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 3750
    .local v5, mNumCallersInConference:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    const/4 v7, 0x5

    if-ge v1, v7, :cond_2

    .line 3752
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3753
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/CallView$ConferenceCallItem;->createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;

    move-result-object v3

    .line 3756
    .local v3, item:Lcom/android/phone/CallView$ConferenceCallItem;
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 3758
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v2, :cond_1

    .line 3759
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    .line 3762
    instance-of v7, v2, Lcom/android/phone/SomcCallerInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, v2

    .line 3764
    check-cast v6, Lcom/android/phone/SomcCallerInfo;

    .line 3765
    .local v6, somcInfo:Lcom/android/phone/SomcCallerInfo;
    iget-object v7, v6, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    iput-object v7, v3, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 3771
    .end local v6           #somcInfo:Lcom/android/phone/SomcCallerInfo;
    :cond_0
    iput-object v0, v3, Lcom/android/phone/CallView$ConferenceCallItem;->conferenceCallId:Ljava/lang/Object;

    .line 3774
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, v3, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    .line 3777
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3750
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3780
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    .end local v2           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v3           #item:Lcom/android/phone/CallView$ConferenceCallItem;
    :cond_2
    return-object v4
.end method

.method private updateExpandedViewState()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4252
    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v2, :cond_2

    .line 4253
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4255
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 4265
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4255
    goto :goto_0

    .line 4260
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1

    .line 4263
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1
.end method

.method private updateProgressIndication()V
    .locals 4

    .prologue
    const v3, 0x7f0b02fe

    .line 3622
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3626
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3654
    :goto_0
    return-void

    .line 3630
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    .line 3632
    sget-object v1, Lcom/android/phone/SomcInCallScreen$21;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3650
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3634
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "No progress indication necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3638
    :pswitch_1
    const v0, 0x7f0b02ff

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3644
    :pswitch_2
    const v0, 0x7f0b0300

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3632
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3992
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProviderOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    :cond_0
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3996
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_1

    .line 3997
    const v1, 0x7f0b0340

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3998
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4001
    const v1, 0x7f0700a6

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4002
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4003
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4005
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4009
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4010
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4011
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4015
    :goto_0
    return-void

    .line 4013
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .parameter "callerInfo"

    .prologue
    .line 3790
    instance-of v1, p1, Lcom/android/phone/SomcCallerInfo;

    if-nez v1, :cond_0

    .line 3794
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 3791
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    .line 3792
    .local v0, somcCallerInfo:Lcom/android/phone/SomcCallerInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V

    .line 3793
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactSns(Lcom/android/phone/SomcCallerInfo;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4162
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4163
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4164
    const/4 v0, 0x1

    return v0
.end method

.method public endSomcInCallScreenSession()V
    .locals 2

    .prologue
    .line 3905
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endSomcInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3907
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 3908
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 3912
    :goto_0
    return-void

    .line 3910
    :cond_1
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1222
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1223
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->moveTaskToBack(Z)Z

    .line 1224
    return-void
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEndOrRejectBtPressed()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .locals 1

    .prologue
    .line 3803
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isKeyBoardHidden()Z
    .locals 2

    .prologue
    .line 782
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 784
    const/4 v0, 0x1

    .line 786
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public okToDialDTMFTones()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1491
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 1492
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1495
    if-nez v2, :cond_1

    .line 1496
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "[okToDialDTMFTones] fgCall = null"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1517
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 1512
    :cond_3
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ringing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", MultiParty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result canDial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method public onActionPerformed(ILjava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3241
    packed-switch p1, :pswitch_data_0

    .line 3503
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3246
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3

    .line 3250
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->showEndingLastCallLayout(I)V

    .line 3252
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3253
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3258
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3259
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3264
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3269
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3274
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3279
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3280
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 3281
    if-eqz v0, :cond_0

    .line 3282
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    goto :goto_0

    .line 3289
    :pswitch_6
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3294
    :pswitch_7
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3295
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3300
    :pswitch_8
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3301
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 3306
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 3311
    :pswitch_a
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 3313
    check-cast v0, Ljava/lang/String;

    const-string v1, "voicemail:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3315
    const-string v0, "voicemail:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3321
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "making a privileged call to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3322
    :cond_4
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3323
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->clearDtmfDialPadDigits()V

    .line 3324
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3325
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3318
    :cond_5
    const-string v0, "tel"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3328
    :cond_6
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to make a privileged call but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3333
    :pswitch_b
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 3334
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asking contacts to show contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3335
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3337
    const-string v1, "phone"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3338
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3339
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3341
    :cond_8
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to show a contact but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3346
    :pswitch_c
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 3347
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startDtmfTone(C)V

    goto/16 :goto_0

    .line 3352
    :pswitch_d
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    goto/16 :goto_0

    .line 3357
    :pswitch_e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3358
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3362
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3360
    :cond_9
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_2

    .line 3366
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->toggleSoundPhoneSpeaker()V

    .line 3367
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3371
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_a

    .line 3372
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3374
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3378
    :pswitch_11
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3379
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3383
    :pswitch_12
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3384
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3389
    :pswitch_13
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3390
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3391
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Answer during 3rd incoming call: ACTION_END_HELD_CALL_AT_3RD_INCOMING_CALL"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3396
    :pswitch_14
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3400
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.carhome.ContactsView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3403
    :catch_0
    move-exception v0

    .line 3408
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "content://contacts/people/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3409
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3417
    :pswitch_15
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_d

    .line 3418
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3420
    :cond_c
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3421
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3424
    :cond_d
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to hangup a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3433
    :pswitch_16
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_f

    .line 3434
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3435
    :cond_e
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3438
    :cond_f
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to extract a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3442
    :pswitch_17
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto/16 :goto_0

    .line 3445
    :pswitch_18
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 3446
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    .line 3452
    :goto_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideRejectMsgList()V

    goto/16 :goto_0

    .line 3447
    :cond_10
    if-nez p2, :cond_11

    .line 3448
    invoke-direct {p0, v4}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto :goto_3

    .line 3450
    :cond_11
    const-string v0, "SomcInCallScreen"

    const-string v1, "wrong data type for reject message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3455
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3457
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3461
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .line 3464
    :pswitch_1b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    .line 3465
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3466
    if-eqz v0, :cond_12

    .line 3469
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarBack(Z)V

    .line 3470
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarHome(Z)V

    .line 3471
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarRecent(Z)V

    goto/16 :goto_0

    .line 3476
    :cond_12
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_0

    .line 3479
    :cond_13
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 3480
    const-string v0, "update the navigation bar with the wrong parameter!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3485
    :pswitch_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    .line 3487
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/SomcRichCallUIHandler;->isContentShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3488
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3490
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    invoke-interface {v1, v0}, Lcom/sonyericsson/feature/IContentShareProvider;->startContentShare(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3495
    :pswitch_1d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3496
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3500
    :cond_14
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3497
    :cond_15
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_14

    .line 3498
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_4

    .line 3241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_e
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 747
    const v3, 0x7f0d0001

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcInCallScreen;->setTheme(I)V

    .line 750
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_4

    const/4 v1, 0x1

    .line 751
    .local v1, dialPadOpen:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v2

    .line 752
    .local v2, inConference:Z
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, dialPadNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->reDraw()V

    .line 758
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 760
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    .line 762
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    sget-object v4, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 765
    :cond_1
    if-eqz v0, :cond_2

    .line 766
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v0}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 768
    :cond_2
    if-eqz v1, :cond_3

    .line 769
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 774
    :cond_3
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 775
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 776
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->requestFocus()Z

    .line 778
    return-void

    .line 750
    .end local v0           #dialPadNumber:Ljava/lang/String;
    .end local v1           #dialPadOpen:Z
    .end local v2           #inConference:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 640
    const-string v1, "SomcInCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate()...  this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 642
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 643
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 646
    sget-boolean v1, Lcom/android/phone/PhoneApp;->sVoiceCapable:Z

    if-nez v1, :cond_0

    .line 652
    const-string v1, "SomcInCallScreen"

    const-string v2, "onCreate() reached on non-voice-capable device"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    .line 728
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    .line 658
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 660
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 663
    const/high16 v0, 0x8

    .line 664
    .local v0, flags:I
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v4, :cond_1

    .line 670
    const/high16 v1, 0x40

    or-int/2addr v0, v1

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 675
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v4, 0x8000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 677
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 679
    iput-object p0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    .line 681
    new-instance v1, Lcom/android/phone/SomcSoundHandling;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/phone/SomcSoundHandling;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    .line 683
    new-instance v1, Lcom/android/phone/LargeCallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/phone/LargeCallView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    .line 684
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->setContentView(Landroid/view/View;)V

    .line 686
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 689
    new-instance v1, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 691
    new-instance v1, Lcom/android/phone/CallTime;

    invoke-direct {v1, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 692
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 695
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dtmf_tone"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    .line 698
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 705
    if-nez p1, :cond_4

    .line 706
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_2

    .line 707
    const-string v1, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 709
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 722
    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 724
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->initContentShareProvider()V

    .line 726
    new-instance v1, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    .line 727
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 695
    goto :goto_1

    .line 712
    :cond_4
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 713
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 715
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v1, :cond_6

    .line 716
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 718
    :cond_6
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v4, v5, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1229
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1230
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1162
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 1168
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->unregister()V

    .line 1169
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 1171
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 1178
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1179
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1186
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1187
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3150
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 3151
    const-string v0, "onImageLoadComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3153
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 3159
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 3166
    :goto_0
    check-cast p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    .line 3167
    iget-object v0, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3168
    iget-object v1, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 3170
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 3171
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 3172
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 3174
    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    .line 3175
    new-instance v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    invoke-direct {v1}, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;-><init>()V

    .line 3176
    iput-object p2, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    .line 3177
    iput-object v0, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 3178
    iput-object p5, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    .line 3179
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    .line 3181
    :cond_1
    return-void

    .line 3163
    :cond_2
    const-string v0, "SomcInCallScreen"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2383
    sparse-switch p1, :sswitch_data_0

    .line 2433
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2386
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2392
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2400
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_0

    .line 2412
    const-string v0, "SomcInCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto :goto_0

    .line 2426
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2428
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 2426
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2383
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1358
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1378
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1379
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1275
    :goto_0
    return v0

    .line 1263
    :pswitch_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/SomcInCallScreen;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 1266
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->start()V

    goto :goto_0

    .line 1269
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 1270
    const v2, 0x7f0b0117

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700d5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1039
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1041
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 1042
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->onPause()V

    .line 1050
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->dialpadDigits:Ljava/lang/String;

    .line 1051
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    :goto_0
    iput-object v0, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1054
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 1056
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1061
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 1066
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 1067
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2

    .line 1103
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 1108
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1110
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 1113
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1118
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1119
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1120
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1125
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1128
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_4

    .line 1129
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 1130
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1137
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1140
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1143
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_6

    .line 1144
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_5

    .line 1145
    const-string v0, "Release UpdateLock on onPause() because there\'s no active phone call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1147
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1149
    :cond_6
    return-void

    .line 1051
    :cond_7
    sget-object v0, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 1235
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->hideAllMenuItems(Landroid/view/Menu;)V

    .line 1237
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1238
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1239
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1240
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1243
    .local v0, bgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    .line 1244
    const v2, 0x7f0700d5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1247
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 1248
    const v2, 0x7f0700d6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1252
    .end local v0           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->enableCallRecorderMenuItems(Landroid/view/Menu;)V

    .line 1256
    :cond_2
    return v4
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2267
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 2268
    const-string v0, "onQueryComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2271
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2272
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x6e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 821
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "SomcInCallScreen"

    const-string v3, "onResume()..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 826
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 828
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 831
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 834
    new-instance v3, Lcom/android/phone/SomcInCallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcInCallScreen$3;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 851
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 858
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 860
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v0, :cond_8

    .line 861
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 884
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 885
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- onResume: need to show status indication!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    move v0, v1

    .line 895
    :goto_1
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v3}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 896
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    .line 902
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v4, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 908
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 910
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    move-result-object v3

    .line 911
    sget-object v4, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    if-eq v3, v4, :cond_3

    .line 912
    if-eqz v0, :cond_a

    .line 920
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_3

    .line 921
    const-string v0, "SomcInCallScreen"

    const-string v1, "- syncWithPhoneState failed, but staying here anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_b

    .line 972
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 973
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 987
    :goto_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 991
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 992
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 993
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 997
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-nez v0, :cond_5

    .line 998
    new-instance v0, Lcom/android/phone/SomcTonePlayer;

    const/16 v1, 0x5a

    invoke-direct {v0, v2, v1}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1001
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_6

    .line 1022
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    .line 1023
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1024
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1025
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1032
    :cond_6
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_7

    .line 1033
    const-string v0, "SomcInCallScreen"

    const-string v1, "onResume() done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_7
    :goto_4
    return-void

    .line 863
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    goto/16 :goto_0

    .line 898
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 936
    :cond_a
    const-string v0, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 945
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto :goto_4

    .line 985
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1159
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1191
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    .line 1192
    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1193
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1195
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1197
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1198
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1200
    :cond_1
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2279
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 2282
    sget-object v1, Lcom/android/phone/SomcInCallScreen$21;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2325
    const v0, 0x7f0b005e

    .line 2333
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2334
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2337
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2340
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0096

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2344
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2345
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2346
    return-void

    .line 2287
    :pswitch_0
    const v0, 0x7f0b005c

    .line 2288
    goto :goto_0

    .line 2293
    :pswitch_1
    const v0, 0x7f0b005b

    .line 2294
    goto :goto_0

    .line 2300
    :pswitch_2
    const v0, 0x7f0b005d

    .line 2301
    goto :goto_0

    .line 2306
    :pswitch_3
    const v0, 0x7f0b0058

    .line 2307
    goto :goto_0

    .line 2312
    :pswitch_4
    const v0, 0x7f0b005a

    .line 2313
    goto :goto_0

    .line 2318
    :pswitch_5
    const v0, 0x7f0b0059

    .line 2319
    goto :goto_0

    .line 2282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 2
    .parameter

    .prologue
    .line 2373
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallTime(Ljava/lang/String;)V

    .line 2378
    :goto_0
    return-void

    .line 2376
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x6f

    .line 3826
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3827
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3828
    return-void
.end method

.method requestUpdateScreen()V
    .locals 1

    .prologue
    .line 3847
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3850
    :cond_0
    return-void
.end method

.method public setEmergencyCallRetryCount(I)V
    .locals 0
    .parameter "retryCount"

    .prologue
    .line 3935
    iput p1, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 3936
    return-void
.end method

.method setEndOrRejectBtPressed()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 815
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1310
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1311
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1312
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1313
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 2863
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 2869
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 2870
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 3809
    if-eqz p1, :cond_0

    .line 3810
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3814
    :goto_0
    return-void

    .line 3812
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateMicIsMuted()V
    .locals 2

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 4245
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 4246
    return-void
.end method

.method updateScreen()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1836
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1838
    sget-boolean v3, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v3, :cond_0

    .line 1839
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 1840
    const-string v4, "  updateScreen..."

    invoke-direct {p0, v4}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - phone state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - inCallScreenMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1850
    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v3, :cond_2

    .line 1851
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 1852
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2038
    :cond_1
    :goto_0
    return-void

    .line 1854
    :cond_2
    sget-object v3, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v2, v3, :cond_3

    .line 1855
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_1

    .line 1856
    const-string v0, "- updateScreen: call ended state (NOT updating ui)..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1860
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProgressIndication()V

    .line 1863
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1864
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1865
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1867
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->refreshCallViewSoundStates()V

    .line 1869
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1870
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 1875
    :goto_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 1876
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_9

    .line 1879
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "- updateScreen: Ringing call."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1881
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1889
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->allowEndingHeldCallAt3rdIncomingCall()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 1905
    :goto_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1906
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 1908
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1909
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isCarMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1910
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->initRejectMsgForCarMode()V

    goto/16 :goto_0

    .line 1872
    :cond_5
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1889
    goto :goto_2

    .line 1895
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    goto :goto_3

    .line 1912
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1915
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1a

    .line 1917
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1921
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1923
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_a

    .line 1924
    const-string v2, "- updateScreen: Making an outgoing call."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1925
    :cond_a
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v3}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 1926
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 1927
    :cond_b
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1929
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_c

    .line 1930
    const-string v2, "- updateScreen: Two ongoing calls."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1934
    :cond_c
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move v1, v0

    .line 1942
    :cond_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->showTwoCallsLayout(ZZZ)V

    .line 1944
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1945
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 1946
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 1948
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 1949
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 1953
    :cond_f
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_10

    .line 1954
    const-string v2, "- updateScreen: One call."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1956
    :cond_10
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1959
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_11

    const-string v2, "We have a single conference call."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1961
    :cond_11
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1962
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 1963
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 1967
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v0

    .line 1968
    :goto_4
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_15

    move v3, v0

    .line 1969
    :goto_5
    if-eqz v2, :cond_12

    if-nez v3, :cond_13

    :cond_12
    move v1, v0

    .line 1971
    :cond_13
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->showConferenceCallLayout(ZZ)V

    .line 1974
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    :cond_14
    move v2, v1

    .line 1967
    goto :goto_4

    :cond_15
    move v3, v1

    .line 1968
    goto :goto_5

    .line 1976
    :cond_16
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1978
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_17

    const-string v2, "We have a single call on hold."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1980
    :cond_17
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v3}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 1982
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 1984
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "We have a single active call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1988
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 1989
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 1990
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 1992
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 1994
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 1995
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 2000
    :cond_1a
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_1b

    const-string v2, "- updateScreen: Phone is idle."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2006
    :cond_1b
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1d

    .line 2007
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_1c

    .line 2009
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2012
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2014
    :cond_1d
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1f

    .line 2016
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v2, v3}, Lcom/android/phone/SomcPhoneUtils;->getCallFailedString(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2033
    :cond_1f
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "- updateScreen: No disconnected calls."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2035
    :cond_20
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    goto/16 :goto_0
.end method
