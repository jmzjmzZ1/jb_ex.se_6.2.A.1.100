.class public Lcom/android/phone/NetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;
    }
.end annotation


# static fields
.field private static mNetworkSelectionDone:Z


# instance fields
.field private currentNetwork:Landroid/preference/Preference;

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonNetworkSearch:Landroid/preference/Preference;

.field private mButtonNetworkSearchMode:Landroid/preference/ListPreference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

.field private mDataTrafficNeedRestore:Z

.field private mDisableNetworkSearchWhenDataIsOn:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSearchModeAutomatic:Z

.field private mNWQuerySponsor:Landroid/preference/Preference;

.field private mNetworkList:Lcom/android/phone/SomcProgressCategory;

.field private mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

.field private mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

.field mNetworkSelectMsg:Ljava/lang/String;

.field private mOKClickedToSearchNetwork:Z

.field private mOnPause:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSingleNoRatRow:Z

.field private mSkipNextAutoReselect:Z

.field private mWaitingForServiceState:Z

.field private selectedCarrier:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    .line 125
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    .line 126
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 127
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    .line 129
    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    .line 140
    new-instance v0, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NetworkSetting$NetWorkSettingBroadcastReceiver;-><init>(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/android/phone/NetworkSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$1;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    .line 234
    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    .line 237
    new-instance v0, Lcom/android/phone/NetworkSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$2;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    .line 260
    new-instance v0, Lcom/android/phone/NetworkSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$3;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    .line 1099
    new-instance v0, Lcom/android/phone/NetworkSetting$9;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkSetting$9;-><init>(Lcom/android/phone/NetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionSucceeded()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/NetworkSetting;Lcom/android/phone/INetworkQueryService;)Lcom/android/phone/INetworkQueryService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/INetworkQueryServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/NetworkSetting;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateNetworkSearchModeButton()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/phone/NetworkSetting;->networksListLoaded(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/NetworkSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/NetworkSetting;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->disableNetworkSettingsMenu()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/NetworkSetting;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->enableNetworkSettingsMenu()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/NetworkSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkSetting;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/NetworkSetting;Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v0

    return v0
.end method

.method private checkSearchNwPossible()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1148
    iget-boolean v2, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-nez v2, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return v0

    .line 1150
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_3

    .line 1154
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "checkSearchPossible() phoen status not IDLE."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1155
    :cond_2
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    move v0, v1

    .line 1156
    goto :goto_0

    .line 1159
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 1160
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    .line 1163
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "checkSearchPossible() DATA_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1164
    :cond_5
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    move v0, v1

    .line 1165
    goto :goto_0
.end method

.method private clearList()V
    .locals 3

    .prologue
    .line 839
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 840
    .local v1, p:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/phone/SomcProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 842
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 843
    return-void
.end method

.method private createAlertDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "msgRes"

    .prologue
    .line 604
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    .local v0, alertbuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 606
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    const v1, 0x7f0b0096

    new-instance v2, Lcom/android/phone/NetworkSetting$8;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$8;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 613
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "msgRes"

    .prologue
    .line 570
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, dataDisableAlertbuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    const v1, 0x104000a

    new-instance v2, Lcom/android/phone/NetworkSetting$6;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$6;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/phone/NetworkSetting$7;

    invoke-direct {v2, p0}, Lcom/android/phone/NetworkSetting$7;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private disableNetworkSettingsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1055
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "disableNetworkSettingsMenu()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1056
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 1057
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 1058
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 1059
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 1061
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v0, :cond_1

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v0, v1}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcProgressCategory;->setTitle(Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1073
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcProgressCategory;->setEnabled(Z)V

    .line 1074
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "phone"

    const-string v1, "Failed to stop network query in NetworkSettings disableNetworkSettingsMenu."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayEmptyNetworkList(Z)V
    .locals 3
    .parameter "isEmpty"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0202

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/SomcProgressCategory;->setTitle(Ljava/lang/String;)V

    .line 619
    return-void

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0200

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private displayNetworkQueryFailed(I)V
    .locals 4
    .parameter "error"

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0204

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 632
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    .line 634
    return-void
.end method

.method private displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "ex"

    .prologue
    .line 637
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 645
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 643
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSelectionOngoing()V
    .locals 4

    .prologue
    .line 665
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0207

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 673
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSelectionSucceeded()V
    .locals 4

    .prologue
    .line 648
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0209

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, status:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 654
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notificationMgr:Lcom/android/phone/NotificationMgr;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/phone/NotificationMgr;->postTransientNotification(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayNetworkSeletionInProgress(Ljava/lang/String;)V
    .locals 4
    .parameter "networkStr"

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0205

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    .line 625
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 626
    return-void
.end method

.method private enableNetworkSettingsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1080
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "enableNetworkSettingsMenu()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcProgressCategory;->setEnabled(Z)V

    .line 1085
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v0, :cond_1

    .line 1086
    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    .line 1087
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 1089
    :cond_1
    return-void
.end method

.method private initNetworkQuery()V
    .locals 3

    .prologue
    .line 1132
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initNetworkQuery()"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 1137
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/NetworkQueryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/NetworkSetting;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1140
    return-void
.end method

.method private isCarrierNameInList(Ljava/lang/String;)Z
    .locals 4
    .parameter "carrierName"

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 826
    .local v1, i:I
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v3}, Lcom/android/phone/SomcProgressCategory;->getPreferenceCount()I

    move-result v2

    .line 828
    .local v2, nbrOfCarrieres:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 829
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v3, v1}, Lcom/android/phone/SomcProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcNetworkPreference;

    .line 830
    .local v0, carrier:Lcom/android/phone/SomcNetworkPreference;
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    const/4 v3, 0x1

    .line 835
    .end local v0           #carrier:Lcom/android/phone/SomcNetworkPreference;
    :goto_1
    return v3

    .line 833
    .restart local v0       #carrier:Lcom/android/phone/SomcNetworkPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 834
    goto :goto_0

    .line 835
    .end local v0           #carrier:Lcom/android/phone/SomcNetworkPreference;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isHomeNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 6
    .parameter "ni"

    .prologue
    const/4 v5, 0x0

    .line 854
    const/4 v1, 0x0

    .line 855
    .local v1, isHomePlmn:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, operator:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, imsi:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 860
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    .line 863
    :cond_0
    return v1
.end method

.method private isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 2
    .parameter "ni"

    .prologue
    .line 846
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 2
    .parameter "ni"

    .prologue
    .line 850
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/OperatorInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadNetworksList()V
    .locals 3

    .prologue
    .line 678
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "load networks list..."

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 684
    const/16 v1, 0xc8

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 690
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_2

    .line 692
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 701
    :cond_2
    :goto_1
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, " DIALOG_NETWORK_LIST_LOAD dismissed already"

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 694
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "phone"

    const-string v2, "Failed to start network query in NetworkSettings loadNetworksList."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 699
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/NetworkSetting;->mWaitingForServiceState:Z

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1006
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetworksList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

.method private networksListLoaded(Ljava/util/List;I)V
    .locals 10
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 711
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "networks list loaded"

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 713
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->clearList()V

    .line 714
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 804
    :goto_0
    return-void

    .line 717
    :cond_1
    if-eqz p2, :cond_4

    .line 718
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while querying available networks, status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 719
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/phone/NetworkSetting;->displayNetworkQueryFailed(I)V

    .line 720
    invoke-direct {p0, v9}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 802
    :cond_3
    :goto_1
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    .line 803
    iput-boolean v8, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    goto :goto_0

    .line 722
    :cond_4
    if-eqz p1, :cond_10

    .line 723
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number of networks found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 725
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 726
    invoke-direct {p0, v9}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 796
    :cond_6
    :goto_2
    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mSkipNextAutoReselect:Z

    if-nez v6, :cond_3

    .line 797
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->selectNetworkAutomatic()V

    goto :goto_1

    .line 728
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    .line 731
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->updateOperatorNameFromIntent()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, currentNetworkName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 738
    .local v3, isPlmnPreferred:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/OperatorInfo;

    .line 739
    .local v4, ni:Lcom/android/internal/telephony/OperatorInfo;
    sget-boolean v6, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 742
    :cond_9
    new-instance v0, Lcom/android/phone/SomcNetworkPreference;

    const/4 v6, 0x0

    invoke-direct {v0, p0, v6}, Lcom/android/phone/SomcNetworkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 743
    .local v0, carrier:Lcom/android/phone/SomcNetworkPreference;
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    .line 744
    .local v5, title:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 745
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v5

    .line 747
    :cond_a
    if-nez v3, :cond_c

    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    .line 748
    invoke-virtual {v0, v1}, Lcom/android/phone/SomcNetworkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 753
    :goto_4
    invoke-virtual {v0, v8}, Lcom/android/phone/SomcNetworkPreference;->setPersistent(Z)V

    .line 756
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 757
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setNetworkNotAvailable()V

    .line 768
    :cond_b
    :goto_5
    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    if-eqz v6, :cond_f

    .line 770
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/NetworkSetting;->isCarrierNameInList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 774
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v6, v0}, Lcom/android/phone/SomcProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 775
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 750
    :cond_c
    invoke-virtual {v0, v5}, Lcom/android/phone/SomcNetworkPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 759
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isHomeNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 760
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setHomeNetwork()V

    .line 762
    :cond_e
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->isNetworkCurrent(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 763
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setCurrentNetwork()V

    .line 764
    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    goto :goto_5

    .line 782
    :cond_f
    invoke-virtual {v4}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcNetworkPreference;->setNetworkRAT(Lcom/android/internal/telephony/OperatorInfo$RAT;)V

    .line 785
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v6, v0}, Lcom/android/phone/SomcProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 786
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 792
    .end local v0           #carrier:Lcom/android/phone/SomcNetworkPreference;
    .end local v1           #currentNetworkName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isPlmnPreferred:Z
    .end local v4           #ni:Lcom/android/internal/telephony/OperatorInfo;
    .end local v5           #title:Ljava/lang/String;
    :cond_10
    invoke-direct {p0, v9}, Lcom/android/phone/NetworkSetting;->displayEmptyNetworkList(Z)V

    goto/16 :goto_2
.end method

.method private restoreDataTrafficSetting()V
    .locals 2

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    if-nez v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z

    .line 1174
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private selectNetworkAutomatic()V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 992
    sget-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 994
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "select network automatically..."

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 996
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    if-nez v0, :cond_2

    .line 997
    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    .line 1000
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    .line 1001
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1002
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private selectNetworkCarrier(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "carrier"

    .prologue
    const/4 v7, 0x1

    .line 350
    sget-boolean v5, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    if-nez v5, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->displayNetworkSelectionOngoing()V

    .line 381
    :cond_0
    :goto_0
    return v7

    .line 355
    :cond_1
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 357
    .local v1, info:Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 361
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v5, :cond_3

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->AUTOMATIC:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    .line 365
    .local v2, mode:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v5, :cond_4

    const/16 v0, 0x12c

    .line 368
    .local v0, event:I
    :goto_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 369
    .local v4, networkStr:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 372
    :cond_2
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/phone/NetworkSetting;->mNetworkSelectionDone:Z

    .line 373
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 374
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setNetworkSelection(Lcom/android/internal/telephony/OperatorInfo$SelectionMode;Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 377
    invoke-direct {p0, v4}, Lcom/android/phone/NetworkSetting;->displayNetworkSeletionInProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v0           #event:I
    .end local v2           #mode:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #networkStr:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$SelectionMode;->MANUAL:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;

    goto :goto_1

    .line 365
    .restart local v2       #mode:Lcom/android/internal/telephony/OperatorInfo$SelectionMode;
    :cond_4
    const/16 v0, 0xc8

    goto :goto_2
.end method

.method private setIsSearchModeAutomatic(Z)V
    .locals 4
    .parameter "isSearchModeAutomatic"

    .prologue
    .line 965
    iput-boolean p1, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    .line 966
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_selection_mode_automatic"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 969
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 970
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 971
    return-void

    .line 966
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 921
    .line 924
    if-eqz p1, :cond_5

    .line 926
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0}, Lcom/android/phone/SomcProgressCategory;->getPreferenceCount()I

    move-result v4

    .line 928
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update current network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    :cond_0
    move v3, v2

    .line 931
    :goto_0
    if-le v4, v3, :cond_5

    .line 932
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcNetworkPreference;

    .line 933
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 938
    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/OperatorInfo$RAT;->UNDEFINED_OR_NO_CHANGE:Lcom/android/internal/telephony/OperatorInfo$RAT;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRAT()Lcom/android/internal/telephony/OperatorInfo$RAT;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/OperatorInfo$RAT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 941
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    check-cast v1, Lcom/android/phone/SomcNetworkPreference;

    invoke-virtual {v1}, Lcom/android/phone/SomcNetworkPreference;->unsetCurrentNetwork()V

    .line 944
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set network as current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 945
    :cond_3
    invoke-virtual {v0}, Lcom/android/phone/SomcNetworkPreference;->setCurrentNetwork()V

    .line 946
    iput-object v0, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    .line 947
    const/4 v0, 0x1

    .line 955
    :goto_1
    return v0

    .line 951
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 952
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private updateNetworkFromServiceState(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter

    .prologue
    .line 870
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 872
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 876
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 877
    packed-switch v0, :pswitch_data_0

    .line 897
    :pswitch_0
    const-string v5, "undefined"

    .line 901
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected network : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 906
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, "Fake"

    const-string v2, "Fake"

    const-string v4, "unknown"

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->updateCurrentNetwork(Lcom/android/internal/telephony/OperatorInfo;)Z

    .line 915
    :cond_1
    :goto_1
    return-void

    .line 880
    :pswitch_1
    const-string v5, "gsm"

    goto :goto_0

    .line 887
    :pswitch_2
    const-string v5, "wcdma"

    goto :goto_0

    .line 892
    :pswitch_3
    const-string v5, "lte"

    goto :goto_0

    .line 913
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "No network id"

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private updateNetworkSearchModeButton()V
    .locals 3

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 988
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateOperatorNameFromIntent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 807
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 808
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 810
    .local v1, spnUpdateIntent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, currentOpName:Ljava/lang/String;
    const-string v2, "showPlmn"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 813
    const-string v2, "plmn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 817
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current operator name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 821
    .end local v0           #currentOpName:Ljava/lang/String;
    .end local v1           #spnUpdateIntent:Landroid/content/Intent;
    :cond_1
    return-object v0

    .line 814
    .restart local v0       #currentOpName:Ljava/lang/String;
    .restart local v1       #spnUpdateIntent:Landroid/content/Intent;
    :cond_2
    const-string v2, "showSpn"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    const-string v2, "spn"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    .line 396
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->finish()V

    .line 397
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 408
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f080024

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 413
    const v6, 0x7f050012

    invoke-virtual {p0, v6}, Lcom/android/phone/NetworkSetting;->addPreferencesFromResource(I)V

    .line 414
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 415
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    .line 417
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "connectivity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;

    .line 421
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 423
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "button_network_search_mode_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    .line 424
    const-string v6, "button_network_search_key"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    .line 425
    const-string v6, "network_list"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/phone/SomcProgressCategory;

    iput-object v6, p0, Lcom/android/phone/NetworkSetting;->mNetworkList:Lcom/android/phone/SomcProgressCategory;

    .line 428
    const-string v6, "ro.network.auto_selection_only"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 430
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 450
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "network_selection_mode_automatic"

    invoke-static {v6, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 454
    .local v3, isSelectionModeAutomatic:Z
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 457
    new-instance v2, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 459
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v6, :cond_0

    .line 460
    const-string v6, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/android/phone/NetworkSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v7, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x190

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 468
    iget-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v6, v7, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 471
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 473
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->initNetworkQuery()V

    .line 476
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/NetworkSetting;->mSingleNoRatRow:Z

    .line 477
    return-void

    .line 436
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .end local v3           #isSelectionModeAutomatic:Z
    :cond_2
    new-array v0, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b020c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0091

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    .line 439
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 441
    new-array v1, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0125

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0126

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 444
    .local v1, entryValues:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 445
    iget-object v6, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entryValues:[Ljava/lang/CharSequence;
    :cond_3
    move v3, v7

    .line 450
    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 507
    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x12c

    if-ne p1, v2, :cond_1

    .line 509
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 510
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 511
    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 512
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 513
    sparse-switch p1, :sswitch_data_0

    .line 530
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 565
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 520
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mNetworkSelectMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 524
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 535
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    const/4 v1, 0x0

    .line 536
    .local v1, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 538
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0094

    new-instance v3, Lcom/android/phone/NetworkSetting$4;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$4;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 545
    const v2, 0x7f0b0095

    new-instance v3, Lcom/android/phone/NetworkSetting$5;

    invoke-direct {v3, p0}, Lcom/android/phone/NetworkSetting$5;-><init>(Lcom/android/phone/NetworkSetting;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 551
    const v2, 0x7f0b008f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 553
    goto :goto_0

    .line 555
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_3
    const v2, 0x7f0b00fe

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 558
    goto :goto_0

    .line 560
    :sswitch_4
    const v2, 0x7f0b00fd

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->createAlertDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 561
    goto :goto_0

    .line 513
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch

    .line 536
    :sswitch_data_1
    .sparse-switch
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 489
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    if-eqz v1, :cond_0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->mCallback:Lcom/android/phone/INetworkQueryServiceCallback;

    invoke-interface {v1, v2}, Lcom/android/phone/INetworkQueryService;->stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mNetworkQueryServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->unbindService(Landroid/content/ServiceConnection;)V

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->restoreDataTrafficSetting()V

    .line 500
    iget-object v1, p0, Lcom/android/phone/NetworkSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 503
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "phone"

    const-string v2, "Failed to stop network query in NetworkSettings on onDestroy."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 219
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 310
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 313
    .local v0, isSelectedSearchModeAutomatic:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eq v0, v3, :cond_1

    .line 316
    if-nez v0, :cond_4

    .line 317
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    .line 318
    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 319
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Manual search"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->currentNetwork:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    .line 345
    .end local v0           #isSelectedSearchModeAutomatic:Z
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 310
    goto :goto_0

    .line 328
    .restart local v0       #isSelectedSearchModeAutomatic:Z
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    goto :goto_1

    .line 331
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V

    .line 332
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Automatic search"

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 335
    :cond_5
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v2

    .line 276
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/NetworkSetting;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v3, :cond_2

    .line 277
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;

    .line 279
    :cond_2
    const/4 v0, 0x0

    .line 281
    .local v0, handled:Z
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_4

    .line 282
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;

    iget-boolean v4, p0, Lcom/android/phone/NetworkSetting;->mIsSearchModeAutomatic:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 301
    goto :goto_0

    .line 282
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 284
    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mButtonNetworkSearch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_5

    .line 285
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->checkSearchNwPossible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/android/phone/NetworkSetting;->loadNetworksList()V

    .line 287
    const/4 v0, 0x1

    goto :goto_2

    .line 289
    :cond_5
    sget-boolean v3, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected carrier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/NetworkSetting;->log(Ljava/lang/String;)V

    .line 290
    :cond_6
    iput-object p2, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    .line 291
    iget-object v3, p0, Lcom/android/phone/NetworkSetting;->mNetworkMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/OperatorInfo;

    .line 292
    .local v1, ni:Lcom/android/internal/telephony/OperatorInfo;
    if-eqz v1, :cond_0

    .line 295
    invoke-direct {p0, v1}, Lcom/android/phone/NetworkSetting;->isNetworkForbidden(Lcom/android/internal/telephony/OperatorInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    const/16 v2, 0x190

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkSetting;->showDialog(I)V

    goto :goto_2

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkSetting;->mOnPause:Z

    .line 224
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 225
    return-void
.end method
