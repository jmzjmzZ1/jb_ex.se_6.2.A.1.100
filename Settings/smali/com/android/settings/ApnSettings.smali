.class public Lcom/android/settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$2;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;

.field private mUseNvOperatorForEhrpd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 91
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    const-string v0, "persist.radio.use_nv_for_ehrpd"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    .line 111
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "operator"

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method private addTetherPref(Landroid/preference/PreferenceGroup;)V
    .locals 12
    .parameter "apnList"

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 231
    const-string v9, "gsm.sim.operator.numeric"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, numeric:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tether_dun_required"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_6

    move v2, v7

    .line 237
    .local v2, isTetherDunRequired:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "tether_dun_apn"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, apnDataString:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b003c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    :cond_2
    new-instance v0, Lcom/sonyericsson/settings/apn/TetherApnData;

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    .line 252
    .local v0, apnData:Lcom/sonyericsson/settings/apn/TetherApnData;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->isTetherDunValid()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_5

    .line 255
    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, mcc:Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, mnc:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getMnc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 262
    :cond_4
    new-instance v6, Lcom/android/settings/ApnPreference;

    invoke-direct {v6, p0, v7}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Z)V

    .line 264
    .local v6, pref:Lcom/android/settings/ApnPreference;
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v0}, Lcom/sonyericsson/settings/apn/TetherApnData;->getApn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v6, v8}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 267
    invoke-virtual {v6, p0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    invoke-virtual {v6, v8}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 270
    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 273
    .end local v3           #mcc:Ljava/lang/String;
    .end local v4           #mnc:Ljava/lang/String;
    .end local v6           #pref:Lcom/android/settings/ApnPreference;
    :cond_5
    return-void

    .end local v0           #apnData:Lcom/sonyericsson/settings/apn/TetherApnData;
    .end local v1           #apnDataString:Ljava/lang/String;
    .end local v2           #isTetherDunRequired:Z
    :cond_6
    move v2, v8

    .line 234
    goto/16 :goto_0
.end method

.method private fillList()V
    .locals 18

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getOperatorNumericSelection()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 185
    .local v9, cursor:Landroid/database/Cursor;
    const-string v1, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 186
    .local v8, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 187
    invoke-static {}, Lcom/android/settings/ApnPreference;->clearSelectedKey()V

    .line 189
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v12, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 192
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 199
    .local v17, type:Ljava/lang/String;
    new-instance v14, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 201
    .local v14, pref:Lcom/android/settings/ApnPreference;
    invoke-virtual {v14, v11}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v14, v13}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v14, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    if-eqz v17, :cond_0

    const-string v1, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 208
    .local v16, selectable:Z
    :goto_1
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 209
    if-eqz v16, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {v14}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 213
    :cond_1
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 217
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 207
    .end local v16           #selectable:Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 215
    .restart local v16       #selectable:Z
    :cond_3
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 219
    .end local v7           #apn:Ljava/lang/String;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #pref:Lcom/android/settings/ApnPreference;
    .end local v16           #selectable:Z
    .end local v17           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 221
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 222
    .local v15, preference:Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 225
    .end local v15           #preference:Landroid/preference/Preference;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 226
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/ApnSettings;->addTetherPref(Landroid/preference/PreferenceGroup;)V

    .line 228
    :cond_6
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 2
    .parameter

    .prologue
    .line 138
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$DataState;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0
.end method

.method private getOperatorNumeric()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 461
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    if-eqz v3, :cond_0

    .line 463
    const-string v3, "ro.cdma.home.operator.numeric"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, mccMncForEhrpd:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 465
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v0           #mccMncForEhrpd:Ljava/lang/String;
    :cond_0
    const-string v3, "gsm.apn.sim.operator.numeric"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, mccMncFromSim:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 471
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private getOperatorNumericSelection()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 452
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->getOperatorNumeric()[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, mccmncs:[Ljava/lang/String;
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, where:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " or numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOperatorNumericSelection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-object v1

    .line 454
    .end local v1           #where:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 455
    .restart local v1       #where:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 336
    const/4 v7, 0x0

    .line 338
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 344
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 345
    return-object v7
.end method

.method private restoreDefaultApn()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 349
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 350
    sput-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 352
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_1

    .line 357
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 360
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 364
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 366
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 327
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 156
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.action.APN_SIM_CHANGE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 435
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 436
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 437
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 441
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 281
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b037d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    return v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 291
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 316
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 320
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 309
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 312
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 446
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 449
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method
