.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 201
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 609
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 610
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 611
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 616
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 610
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 616
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f0b0293

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 183
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 186
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 188
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 189
    const v3, 0x104046f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    .end local v2           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 195
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isSDCardShared()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    .line 345
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    :try_start_0
    sget-object v9, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v6, v9}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 349
    .local v5, sdCardPath:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, volumePaths:[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 357
    .end local v5           #sdCardPath:Ljava/lang/String;
    .end local v7           #volumePaths:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 353
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #sdCardPath:Ljava/lang/String;
    .restart local v7       #volumePaths:[Ljava/lang/String;
    :cond_1
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 354
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 355
    const-string v8, "shared"

    invoke-virtual {v6, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0

    .line 353
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private openConfirmDialog(I)V
    .locals 3
    .parameter

    .prologue
    .line 649
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/settings/TetherConfirmationDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 652
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 589
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 591
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b03a3

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 525
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 531
    :cond_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->openConfirmDialog(I)V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 561
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 586
    :goto_0
    return-void

    .line 563
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 567
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 568
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 569
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 570
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 571
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 572
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 575
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 576
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0b03a5

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 580
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 434
    const/4 v5, 0x0

    .line 435
    .local v5, bluetoothTethered:I
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v2, v8

    .line 436
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v3, v7

    .line 437
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 436
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 435
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 440
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 441
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v12, v2, v8

    .line 442
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v11, v3, v7

    .line 443
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 442
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 441
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_2

    .line 447
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 448
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 449
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_6

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b0217

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 474
    :goto_4
    return-void

    .line 452
    :cond_6
    const/16 v14, 0xb

    if-ne v6, v14, :cond_7

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 454
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b00dd

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 455
    :cond_7
    const/16 v14, 0xc

    if-ne v6, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 457
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    const/4 v14, 0x1

    if-le v5, v14, :cond_8

    .line 459
    const v14, 0x7f0b03a7

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 461
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 462
    .end local v13           #summary:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_9

    .line 463
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03a6

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 464
    :cond_9
    if-eqz v4, :cond_a

    .line 465
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03a9

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 467
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03a5

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 470
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 472
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0b03a8

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 361
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 364
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 379
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 381
    .local v2, cm:Landroid/net/ConnectivityManager;
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v13, :cond_1

    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v13, :cond_1

    const/4 v9, 0x1

    .line 382
    .local v9, usbAvailable:Z
    :goto_0
    const/4 v10, 0x0

    .line 383
    .local v10, usbError:I
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v8, v0, v4

    .line 384
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v1, v3

    .line 385
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 386
    if-nez v10, :cond_0

    .line 387
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v10

    .line 384
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 381
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #usbAvailable:Z
    .end local v10           #usbError:I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 383
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #usbAvailable:Z
    .restart local v10       #usbError:I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_1

    .line 392
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 393
    .local v12, usbTethered:Z
    move-object/from16 v0, p2

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v8, v0, v4

    .line 394
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_5

    aget-object v7, v1, v3

    .line 395
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 394
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 393
    .end local v7           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_3

    .line 398
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    .line 399
    .local v11, usbErrored:Z
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .restart local v4       #i$:I
    :goto_5
    if-ge v4, v5, :cond_9

    aget-object v8, v0, v4

    .line 400
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_6
    if-ge v3, v6, :cond_8

    aget-object v7, v1, v3

    .line 401
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    .line 400
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 399
    .end local v7           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_5

    .line 405
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v8           #s:Ljava/lang/String;
    :cond_9
    if-eqz v12, :cond_a

    .line 406
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03a0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 407
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 408
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 430
    :goto_7
    return-void

    .line 409
    :cond_a
    if-eqz v9, :cond_c

    .line 410
    if-nez v10, :cond_b

    .line 411
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b039f

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 415
    :goto_8
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 416
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 413
    :cond_b
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03a3

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 417
    :cond_c
    if-eqz v11, :cond_d

    .line 418
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03a3

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 419
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 420
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 421
    :cond_d
    iget-boolean v13, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v13, :cond_e

    .line 422
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03a1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 423
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 424
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 426
    :cond_e
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v14, 0x7f0b03a2

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 427
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 428
    iget-object v13, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 644
    const v0, 0x7f0b06c0

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 536
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 537
    if-nez p1, :cond_2

    .line 538
    if-ne p2, v1, :cond_1

    .line 539
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 551
    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 545
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 548
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 553
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 554
    if-ne p2, v1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 620
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 622
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 629
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 630
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 635
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0293

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 640
    .end local v0           #index:I
    :cond_0
    return-void

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v7, 0x7f050042

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v7, "TetherChoiceInt"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 130
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 135
    :cond_1
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 138
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 144
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 145
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 148
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v4, v8

    .line 149
    .local v4, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_5

    move v6, v8

    .line 150
    .local v6, wifiAvailable:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_6

    move v2, v8

    .line 152
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_3
    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_7

    .line 157
    new-instance v7, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 158
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 164
    :goto_3
    if-nez v2, :cond_8

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 177
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 178
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v4           #usbAvailable:Z
    .end local v6           #wifiAvailable:Z
    :cond_4
    move v4, v9

    .line 148
    goto :goto_0

    .restart local v4       #usbAvailable:Z
    :cond_5
    move v6, v9

    .line 149
    goto :goto_1

    .restart local v6       #wifiAvailable:Z
    :cond_6
    move v2, v9

    .line 150
    goto :goto_2

    .line 160
    .restart local v2       #bluetoothAvailable:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 167
    :cond_8
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 168
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 170
    :cond_9
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 218
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 221
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 224
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    .line 477
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 478
    .local v2, enable:Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, key:Ljava/lang/String;
    const-string v6, "enable_wifi_ap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    if-eqz v2, :cond_1

    .line 481
    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 514
    :cond_0
    :goto_0
    return v8

    .line 483
    :cond_1
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v6, v8}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    .line 485
    :cond_2
    const-string v6, "enable_bluetooth_tethering"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 486
    if-eqz v2, :cond_3

    .line 487
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 489
    :cond_3
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 490
    const/4 v3, 0x0

    .line 491
    .local v3, errored:Z
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 493
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, tethered:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, bluetoothIface:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    .line 497
    const/4 v3, 0x1

    .line 499
    :cond_4
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 500
    if-eqz v3, :cond_5

    .line 501
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b03a9

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 505
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0

    .line 503
    :cond_5
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0b03a8

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 507
    .end local v0           #bluetoothIface:Ljava/lang/String;
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #errored:Z
    .end local v5           #tethered:[Ljava/lang/String;
    :cond_6
    const-string v6, "usb_tether_settings"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 508
    if-eqz v2, :cond_7

    .line 509
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 511
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 605
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string v0, "TetherChoiceInt"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 283
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isSDCardShared()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 284
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 288
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 293
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 312
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 316
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 333
    :cond_2
    return-void
.end method
