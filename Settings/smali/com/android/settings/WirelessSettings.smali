.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/settings/NsdEnabler;

.field private mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 268
    const v0, 0x7f0b06b9

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 258
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 259
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 261
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 264
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v18, 0x7f050050

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 113
    .local v2, activity:Landroid/app/Activity;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v18, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 115
    .local v10, nfc:Landroid/preference/CheckBoxPreference;
    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 116
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v18, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 118
    .local v11, nsd:Landroid/preference/CheckBoxPreference;
    const-string v18, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 120
    .local v17, wifiP2p:Landroid/preference/PreferenceScreen;
    new-instance v18, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 123
    const-string v18, "key_secure_elements"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/settings/SecureElementListPreference;->setDependency(Landroid/preference/PreferenceScreen;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/settings/SecureElementListPreference;->setSelectable(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0b005c

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/settings/SecureElementListPreference;->setSummary(I)V

    .line 130
    new-instance v18, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v10, v3, v1}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/SecureElementListPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "airplane_mode_toggleable_radios"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 140
    .local v16, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1110039

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 142
    .local v7, isWimaxEnabled:Z
    if-nez v7, :cond_a

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 144
    .local v15, root:Landroid/preference/PreferenceScreen;
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 145
    .local v14, ps:Landroid/preference/Preference;
    if-eqz v14, :cond_0

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    .end local v14           #ps:Landroid/preference/Preference;
    .end local v15           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    if-eqz v16, :cond_1

    const-string v18, "wifi"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 155
    :cond_1
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 159
    :cond_2
    if-eqz v16, :cond_3

    const-string v18, "bluetooth"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 164
    :cond_3
    if-eqz v16, :cond_4

    const-string v18, "nfc"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 165
    :cond_4
    const-string v18, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 166
    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 170
    :cond_5
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 179
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_7
    const-string v18, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 185
    .local v9, mGlobalProxy:Landroid/preference/Preference;
    const-string v18, "device_policy"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 188
    .local v8, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v18

    if-nez v18, :cond_c

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    const-string v18, "connectivity"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 194
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v18

    if-nez v18, :cond_d

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x111003b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 205
    .local v6, isCellBroadcastAppLinkEnabled:Z
    if-eqz v6, :cond_8

    .line 206
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 207
    .local v13, pm:Landroid/content/pm/PackageManager;
    const-string v18, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 209
    const/4 v6, 0x0

    .line 215
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    :goto_3
    if-nez v6, :cond_9

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    .line 217
    .restart local v15       #root:Landroid/preference/PreferenceScreen;
    const-string v18, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 218
    .restart local v14       #ps:Landroid/preference/Preference;
    if-eqz v14, :cond_9

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    .end local v14           #ps:Landroid/preference/Preference;
    .end local v15           #root:Landroid/preference/PreferenceScreen;
    :cond_9
    return-void

    .line 147
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #isCellBroadcastAppLinkEnabled:Z
    .end local v8           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #mGlobalProxy:Landroid/preference/Preference;
    :cond_a
    if-eqz v16, :cond_b

    const-string v18, "wimax"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz v7, :cond_0

    .line 149
    :cond_b
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 150
    .restart local v14       #ps:Landroid/preference/Preference;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v14           #ps:Landroid/preference/Preference;
    .restart local v8       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v9       #mGlobalProxy:Landroid/preference/Preference;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 197
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_d
    const-string v18, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 198
    .local v12, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_2

    .line 212
    .end local v12           #p:Landroid/preference/Preference;
    .restart local v6       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v5

    .line 213
    .local v5, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->pause()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0}, Lcom/sonymobile/settings/SecureElementListPreference;->pause()V

    .line 254
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 84
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNsdEnabler:Lcom/android/settings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings/NsdEnabler;->resume()V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mSecureElements:Lcom/sonymobile/settings/SecureElementListPreference;

    invoke-virtual {v0}, Lcom/sonymobile/settings/SecureElementListPreference;->resume()V

    .line 237
    :cond_2
    return-void
.end method
