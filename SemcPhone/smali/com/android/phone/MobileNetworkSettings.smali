.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$1;,
        Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler;,
        Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;,
        Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    }
.end annotation


# static fields
.field private static final sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

.field private mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonDataUsage:Landroid/preference/Preference;

.field private mButtonExtendedDataRoam:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

.field private mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mDataUsageListener:Lcom/android/phone/DataUsageListener;

.field private mDisableChargePopups:Z

.field private mDisableNetworkSearchWhenDataIsOn:Z

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private final mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mWaitingAlertType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f080017

    const/4 v4, 0x0

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v2, "preferred_network_mode_key"

    const v3, 0x7f080013

    invoke-direct {v1, v2, v3}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "national_data_roaming_key"

    invoke-direct {v2, v3, v5}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_roaming_key"

    invoke-direct {v2, v3, v5, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;IZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_prefer_2g_key"

    const v4, 0x7f080014

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_use_3g_only_key"

    const v4, 0x7f080015

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_carrier_sel_key"

    const v4, 0x7f080019

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    const-string v3, "button_askatpoweron_key"

    const v4, 0x7f080026

    invoke-direct {v2, v3, v4}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/MobileNetworkSettings;->sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 114
    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 115
    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$NetworkBroadcastReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 3
    .parameter "NetworkMode"

    .prologue
    .line 803
    packed-switch p1, :pswitch_data_0

    .line 833
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 835
    :goto_0
    return-void

    .line 805
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 808
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 811
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 814
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 817
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 820
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 823
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 826
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 829
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private addPreference(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 912
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v0

    .line 913
    .local v0, prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-nez v2, :cond_1

    .line 914
    iget-object v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 915
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkPreferences()V
    .locals 8

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 544
    .local v4, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 545
    .local v2, numberOfPrefs:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberOfPrefs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 546
    move v1, v2

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 547
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 548
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getButtonRes(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    move-result-object v0

    .line 549
    .local v0, buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 550
    :cond_1
    iget-boolean v5, v0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->shownByTrue:Z

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->resId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    .line 551
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visibility customized to false, removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    goto :goto_1

    .line 556
    .end local v0           #buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    .end local v3           #p:Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private getButtonRes(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    .locals 5
    .parameter "key"

    .prologue
    .line 871
    sget-object v0, Lcom/android/phone/MobileNetworkSettings;->sButtonResArray:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;

    .local v0, arr$:[Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 872
    .local v1, buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    iget-object v4, v1, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->label:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 874
    .end local v1           #buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :goto_1
    return-object v1

    .line 871
    .restart local v1       #buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    .end local v1           #buttonRes:Lcom/android/phone/MobileNetworkSettings$ButtonRes;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    .locals 3
    .parameter "key"

    .prologue
    .line 431
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 432
    .local v1, prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-object v2, v1, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    .end local v1           #prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVisiblePreferencesNum()I
    .locals 4

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, count:I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 443
    .local v2, prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-boolean v3, v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v2           #prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :cond_1
    return v0
.end method

.method private loadAllPreferences()V
    .locals 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 420
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 421
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 422
    .local v1, p:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    invoke-direct {v4, v1}, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;-><init>(Landroid/preference/Preference;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 424
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 878
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void
.end method

.method private removePreference(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 901
    .local v1, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceInfo(Ljava/lang/String;)Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    move-result-object v0

    .line 902
    .local v0, prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v2, :cond_1

    .line 903
    iget-object v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 904
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been removed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restorePreferenceScreenVisiblePreferences()V
    .locals 6

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 454
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_data_usage_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 455
    .local v0, dataUsagePreference:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getVisiblePreferencesNum()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 456
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 457
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 458
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;

    .line 460
    .local v2, prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    iget-object v4, v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "button_data_usage_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 463
    :cond_1
    iget-boolean v4, v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->visible:Z

    if-eqz v4, :cond_0

    .line 464
    iget-object v4, v2, Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;->preference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 468
    .end local v1           #i:I
    .end local v2           #prefInfo:Lcom/android/phone/MobileNetworkSettings$PreferenceInfo;
    :cond_2
    return-void
.end method

.method private setValueForAskAtPowerOnSettings()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 563
    const-string v6, "true"

    .line 564
    .local v6, askAtPowerOnString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sonyericsson.requestmonitor.settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "setting"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 568
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 572
    :cond_0
    if-eqz v7, :cond_1

    .line 573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 580
    .local v9, numberOfPrefs:I
    move v8, v9

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_4

    .line 581
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 582
    .local v10, p:Landroid/preference/Preference;
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-eq v10, v0, :cond_2

    .line 583
    invoke-virtual {v10}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 580
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 572
    .end local v8           #i:I
    .end local v9           #numberOfPrefs:I
    .end local v10           #p:Landroid/preference/Preference;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 573
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 586
    .restart local v8       #i:I
    .restart local v9       #numberOfPrefs:I
    :cond_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getOrder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 587
    return-void
.end method

.method private updateExtendedDataRoamModeSummary()V
    .locals 2

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 679
    .local v0, entry:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 680
    return-void
.end method

.method private updateNetworkOperatorsPreference()V
    .locals 3

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 932
    .local v0, disableEfCspPlmnModeBit:Z
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 933
    const-string v1, "button_carrier_sel_key"

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->addPreference(Ljava/lang/String;)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    if-nez v0, :cond_0

    .line 935
    const-string v1, "button_carrier_sel_key"

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreferredNetworkModeItem()V
    .locals 13

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0121

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, preferredInfo:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 399
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 401
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v11, ","

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, fields:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    .line 406
    .local v2, field:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 407
    .local v5, index:I
    aget-object v11, v1, v5

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    aget-object v11, v10, v5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 411
    .end local v2           #field:Ljava/lang/String;
    .end local v5           #index:I
    :cond_0
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 412
    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 413
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 166
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 168
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 170
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 176
    :pswitch_1
    if-ne p2, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v1, "2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setNationalDataRoamingSetting(I)V

    .line 180
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 186
    :goto_1
    iput v3, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :pswitch_2
    if-ne p2, v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setNationalDataRoamingSetting(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 199
    :goto_2
    iput v3, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :pswitch_3
    if-ne p2, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 204
    iput-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 325
    const v4, 0x7f05000c

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 326
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->loadAllPreferences()V

    .line 328
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 329
    new-instance v4, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 331
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    .line 335
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 337
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_data_enabled_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    .line 339
    const-string v4, "button_roaming_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 340
    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 342
    const-string v4, "button_data_usage_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    .line 344
    const-string v4, "button_use_3g_only_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    .line 345
    const-string v4, "button_prefer_2g_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    .line 348
    const-string v4, "national_data_roaming_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    .line 351
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 359
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 365
    .local v2, settingsNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 367
    const-string v4, "throttle"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ThrottleManager;

    .line 368
    .local v3, tm:Landroid/net/ThrottleManager;
    new-instance v4, Lcom/android/phone/DataUsageListener;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataUsage:Landroid/preference/Preference;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/phone/DataUsageListener;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    .line 371
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updatePreferredNetworkModeItem()V

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableNetworkSearchWhenDataIsOn:Z

    if-eqz v4, :cond_0

    .line 379
    const-string v4, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    :cond_0
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    const v4, 0x7f050011

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 387
    const-string v4, "button_askatpoweron_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    .line 390
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 841
    packed-switch p1, :pswitch_data_0

    .line 855
    const/4 v1, 0x0

    .line 867
    :goto_0
    return-object v1

    .line 843
    :pswitch_0
    const v3, 0x7f0b0218

    .line 858
    .local v3, msgId:I
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 859
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x1040014

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 860
    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 862
    const v4, 0x7f0b0094

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    const v4, 0x7f0b0095

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 865
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 846
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #msgId:I
    :pswitch_1
    const v3, 0x7f0b00af

    .line 847
    .restart local v3       #msgId:I
    goto :goto_1

    .line 849
    .end local v3           #msgId:I
    :pswitch_2
    const v3, 0x7f0b00b0

    .line 850
    .restart local v3       #msgId:I
    goto :goto_1

    .line 852
    .end local v3           #msgId:I
    :pswitch_3
    const v3, 0x7f0b0087

    .line 853
    .restart local v3       #msgId:I
    goto :goto_1

    .line 841
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 480
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 487
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 215
    iget v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 472
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 473
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->restorePreferenceScreenVisiblePreferences()V

    .line 474
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->pause()V

    .line 475
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 598
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    .line 601
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 604
    .local v0, buttonNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 607
    .local v2, settingsNetworkMode:I
    if-eq v0, v2, :cond_0

    .line 609
    packed-switch v0, :pswitch_data_0

    .line 641
    :pswitch_0
    const/4 v1, 0x0

    .line 643
    .local v1, modemNetworkMode:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 645
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v4, v5}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 672
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    :cond_0
    :goto_1
    return v5

    .line 611
    .restart local v0       #buttonNetworkMode:I
    .restart local v2       #settingsNetworkMode:I
    :pswitch_1
    const/4 v1, 0x7

    .line 612
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 614
    .end local v1           #modemNetworkMode:I
    :pswitch_2
    const/4 v1, 0x6

    .line 615
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 617
    .end local v1           #modemNetworkMode:I
    :pswitch_3
    const/4 v1, 0x5

    .line 618
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 620
    .end local v1           #modemNetworkMode:I
    :pswitch_4
    const/4 v1, 0x4

    .line 621
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 623
    .end local v1           #modemNetworkMode:I
    :pswitch_5
    const/4 v1, 0x3

    .line 624
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 626
    .end local v1           #modemNetworkMode:I
    :pswitch_6
    const/4 v1, 0x2

    .line 627
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 629
    .end local v1           #modemNetworkMode:I
    :pswitch_7
    const/4 v1, 0x1

    .line 630
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 632
    .end local v1           #modemNetworkMode:I
    :pswitch_8
    const/16 v1, 0x9

    .line 633
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 635
    .end local v1           #modemNetworkMode:I
    :pswitch_9
    const/16 v1, 0xb

    .line 636
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 638
    .end local v1           #modemNetworkMode:I
    :pswitch_a
    const/4 v1, 0x0

    .line 639
    .restart local v1       #modemNetworkMode:I
    goto :goto_0

    .line 652
    .end local v0           #buttonNetworkMode:I
    .end local v1           #modemNetworkMode:I
    .end local v2           #settingsNetworkMode:I
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v3, p2

    .line 653
    check-cast v3, Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-nez v3, :cond_2

    .line 654
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 655
    iput v7, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 656
    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto :goto_1

    :cond_2
    move-object v3, p2

    .line 658
    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-nez v3, :cond_3

    .line 661
    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 662
    iput v5, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 663
    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto :goto_1

    .line 666
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->setNationalDataRoamingSetting(I)V

    .line 668
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    goto :goto_1

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 233
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, settingsNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 317
    .end local v1           #settingsNetworkMode:I
    :goto_0
    return v3

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 242
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    iget-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 250
    :cond_2
    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 251
    iput v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    if-ne p2, v4, :cond_5

    .line 261
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 265
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 267
    .local v0, networkType:I
    :cond_6
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v5, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 274
    .end local v0           #networkType:I
    :cond_7
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 275
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse3gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x2

    .line 277
    .restart local v0       #networkType:I
    :cond_8
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v5, v3}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 284
    .end local v0           #networkType:I
    :cond_9
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_d

    .line 285
    sget-boolean v4, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 286
    :cond_a
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 289
    iget-boolean v4, p0, Lcom/android/phone/MobileNetworkSettings;->mDisableChargePopups:Z

    if-eqz v4, :cond_b

    .line 290
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 292
    :cond_b
    iput-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 293
    iput v5, p0, Lcom/android/phone/MobileNetworkSettings;->mWaitingAlertType:I

    .line 294
    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 298
    :cond_c
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto/16 :goto_0

    .line 302
    :cond_d
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_e

    .line 303
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 304
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "ask_at_poweron"

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonAskAtpoweron:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.sonyericsson.requestmonitor.settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "setting"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 315
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_e
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v3, v0

    .line 317
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 495
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    const-string v0, "persist.cust.tel.adapt"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonUse2gOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 517
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateNetworkOperatorsPreference()V

    .line 518
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataUsageListener:Lcom/android/phone/DataUsageListener;

    invoke-virtual {v0}, Lcom/android/phone/DataUsageListener;->resume()V

    .line 520
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonExtendedDataRoam:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getNationalDataRoamingSetting()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateExtendedDataRoamModeSummary()V

    .line 523
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkPreferences()V

    .line 526
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 527
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const-string v1, "button_data_enabled_key"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 534
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setValueForAskAtPowerOnSettings()V

    .line 537
    :cond_1
    return-void

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 530
    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    goto :goto_1
.end method
