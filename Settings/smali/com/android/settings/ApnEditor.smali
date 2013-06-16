.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstTime:Z

.field private mIsTetherApn:Z

.field private mIsTetherApnEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSettingsLockCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 120
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 466
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 473
    :goto_0
    return-object v3

    .line 469
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkCanSaveApn(Z)Z
    .locals 2
    .parameter "force"

    .prologue
    const/4 v0, 0x0

    .line 586
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 593
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 596
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 786
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    :cond_0
    const-string p1, ""

    .line 789
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 778
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 779
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 781
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 763
    return-void
.end method

.method private fillTetherUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    if-nez v4, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 309
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 310
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getServer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsProxy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 313
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsPort()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMmsc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 317
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->getTypeArray()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/apn/TetherApnData;->getAuthType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 320
    .local v2, authtype:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 321
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 326
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 342
    .local v1, authValIndex:I
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 344
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f070028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, values:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    .end local v1           #authValIndex:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 359
    iget-boolean v4, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 323
    .end local v0           #authVal:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 347
    .restart local v0       #authVal:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v5, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private fillUi(Ljava/lang/String;)V
    .locals 12
    .parameter "defaultOperatorNumeric"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 365
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-eqz v7, :cond_1

    .line 366
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 368
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 369
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 370
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 371
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 372
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 373
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 374
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 375
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 377
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 378
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 379
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 380
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xf

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 381
    iget-boolean v7, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v7, :cond_0

    .line 383
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_0

    .line 385
    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, mnc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 390
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 391
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 392
    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 395
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xe

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 396
    .local v0, authVal:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 397
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 402
    :goto_0
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x10

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 403
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x13

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 404
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    :goto_1
    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 405
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x12

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 408
    .end local v0           #authVal:I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, authValIndex:I
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 427
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f070028

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, values:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v4, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 433
    .end local v1           #authValIndex:I
    .end local v4           #values:[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 440
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 443
    :cond_2
    return-void

    .line 399
    .local v0, authVal:I
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 404
    goto/16 :goto_1

    .line 430
    .local v0, authVal:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v7, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getCustomizedSettings()V
    .locals 7

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 865
    .local v3, lockInfoArray:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 866
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 865
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 868
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 709
    const/4 v1, 0x0

    .line 711
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 717
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0378

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 728
    :cond_0
    :goto_0
    return-object v1

    .line 718
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 719
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0379

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 720
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 721
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b037a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 722
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 723
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b037b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 724
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 725
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isCarrierLocked()Z
    .locals 3

    .prologue
    .line 845
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, carrierName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 847
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 849
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getCustomizedSettings()V

    .line 852
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 853
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mSettingsLockCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    const/4 v1, 0x1

    .line 857
    :cond_1
    return v1
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 452
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 459
    :goto_0
    return-object v3

    .line 455
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 766
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 767
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 773
    :goto_0
    return-object v2

    .line 769
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 770
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 771
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 773
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 13
    .parameter "force"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 607
    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v10, :cond_2

    .line 608
    iget-boolean v9, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-eqz v9, :cond_1

    .line 609
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->validateAndSaveTetherApn(Z)Z

    move-result v8

    .line 705
    :cond_0
    :goto_0
    return v8

    .line 611
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    .local v6, name:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, apn:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, mcc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 622
    invoke-virtual {p0, v8}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 626
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->checkCanSaveApn(Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    .line 629
    invoke-virtual {p0, v8}, Lcom/android/settings/ApnEditor;->showDialog(I)V

    goto :goto_0

    .line 633
    :cond_4
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_5

    .line 634
    sget-object v9, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v10, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_5
    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v10}, Lcom/sonyericsson/settings/apn/TetherApnData;->isTetherDunValid()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v10}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v10, :cond_7

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 645
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_6

    const-string v9, "android.intent.action.INSERT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_0

    .line 655
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    if-eqz p1, :cond_8

    iget-boolean v10, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v10, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v9, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v9, :cond_8

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10, v12, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 657
    iput-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 661
    :cond_8
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 665
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "name"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b05b2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v6           #name:Ljava/lang/String;
    :cond_9
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v8, "apn"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v8, "proxy"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v8, "port"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v8, "mmsproxy"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v8, "mmsport"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v8, "user"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v8, "server"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v8, "password"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v8, "mmsc"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 679
    const-string v8, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    :cond_a
    const-string v8, "protocol"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v8, "roaming_protocol"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v8, "type"

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v8, "mcc"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v8, "mnc"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v8, "numeric"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 693
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 694
    const-string v8, "current"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    :cond_b
    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 700
    const-string v8, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v10, v7, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v8, v9

    .line 705
    goto/16 :goto_0
.end method

.method private validateAndSaveTetherApn(Z)Z
    .locals 7
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 811
    invoke-direct {p0, p1}, Lcom/android/settings/ApnEditor;->checkCanSaveApn(Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 837
    :goto_0
    return v3

    .line 812
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b05b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;->setName(Ljava/lang/String;)V

    .line 816
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setApn(Ljava/lang/String;)V

    .line 817
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setProxy(Ljava/lang/String;)V

    .line 818
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPort(Ljava/lang/String;)V

    .line 819
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsProxy(Ljava/lang/String;)V

    .line 820
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsPort(Ljava/lang/String;)V

    .line 821
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setUser(Ljava/lang/String;)V

    .line 822
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setServer(Ljava/lang/String;)V

    .line 823
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setPassword(Ljava/lang/String;)V

    .line 824
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMmsc(Ljava/lang/String;)V

    .line 826
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 828
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setAuthType(I)V

    .line 830
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setTypeArray(Ljava/lang/String;)V

    .line 832
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMcc(Ljava/lang/String;)V

    .line 833
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/settings/apn/TetherApnData;->setMnc(Ljava/lang/String;)V

    .line 834
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-virtual {v4}, Lcom/sonyericsson/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, tetherDunApn:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_apn"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 168
    const v5, 0x7f050003

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->addPreferencesFromResource(I)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b035a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 171
    const-string v5, "apn_name"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 172
    const-string v5, "apn_apn"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 173
    const-string v5, "apn_http_proxy"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 174
    const-string v5, "apn_http_port"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 175
    const-string v5, "apn_user"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 176
    const-string v5, "apn_server"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 177
    const-string v5, "apn_password"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 178
    const-string v5, "apn_mms_proxy"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 179
    const-string v5, "apn_mms_port"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 180
    const-string v5, "apn_mmsc"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 181
    const-string v5, "apn_mcc"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 182
    const-string v5, "apn_mnc"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 183
    const-string v5, "apn_type"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 185
    const-string v5, "auth_type"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 186
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    const-string v5, "apn_protocol"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 189
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v5, "apn_roaming_protocol"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 195
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 196
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    .line 197
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    :goto_0
    const-string v5, "carrier_enabled"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v5, "bearer"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 205
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 210
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 214
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090009

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tether_dun_required"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v3, v6

    .line 219
    .local v3, isTetherDunRequired:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tether_dun_apn"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, apnDataString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1040019

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_0
    new-instance v5, Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-direct {v5, v3, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mTetherApnData:Lcom/sonyericsson/settings/apn/TetherApnData;

    .line 228
    const-string v5, "TetheringApn"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    .line 229
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v5, :cond_4

    .line 230
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillTetherUI()V

    .line 267
    :goto_3
    return-void

    .line 199
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #apnDataString:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isTetherDunRequired:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    move v5, v7

    .line 212
    goto :goto_1

    :cond_3
    move v3, v7

    .line 216
    goto :goto_2

    .line 234
    .restart local v1       #apnDataString:Ljava/lang/String;
    .restart local v3       #isTetherDunRequired:Z
    :cond_4
    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 263
    :goto_4
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v6, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v9, v9}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 264
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    const-string v5, "operator"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->fillUi(Ljava/lang/String;)V

    goto :goto_3

    .line 236
    :cond_5
    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 237
    iget-boolean v5, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v5, :cond_6

    const-string v5, "pos"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 238
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 243
    :goto_5
    iput-boolean v6, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 247
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v5, :cond_8

    .line 248
    sget-object v5, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert new telephony provider into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_3

    .line 240
    :cond_7
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "pos"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_5

    .line 256
    :cond_8
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_4

    .line 259
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0377

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 744
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 518
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 519
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApnEditable:Z

    if-nez v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 527
    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v2, :cond_2

    .line 528
    const v2, 0x7f0b0373

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02004e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 531
    :cond_2
    const/4 v2, 0x2

    const v3, 0x7f0b0375

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 533
    const/4 v2, 0x3

    const v3, 0x7f0b0376

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x1080038

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 535
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 561
    packed-switch p1, :pswitch_data_0

    .line 569
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 563
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->isCarrierLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 566
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 540
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 556
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 542
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 545
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 550
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 297
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 298
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 482
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 483
    .local v2, index:I
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 485
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f070028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 487
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 488
    goto :goto_1

    .line 490
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 491
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 493
    goto :goto_1

    .line 495
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 498
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 499
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 500
    goto :goto_1

    .line 502
    :cond_4
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 505
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 507
    goto :goto_1

    .line 509
    :cond_6
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 510
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 749
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 755
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 758
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 284
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->finish()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/android/settings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 289
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 574
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsTetherApn:Z

    if-nez v0, :cond_0

    .line 576
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 794
    invoke-virtual {p0, p2}, Lcom/android/settings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 795
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
